import streamlit as st
import pandas as pd
import plotly.express as px
import io

# Dati grezzi forniti dall'utente
# Si assume che OVERALL_EVALUATION sia importato da un file 'config.py'
# o sia definito altrove prima dell'esecuzione di questo script.
from config import OVERALL_EVALUATION 
raw_data = OVERALL_EVALUATION

def parse_data(raw_data):
    """
    Parsa la stringa di dati grezzi in un DataFrame Pandas.
    """
    lines = raw_data.strip().split('\n')
    data = []
    current_language = None
    model_headers = []

    for line in lines:
        line = line.strip()
        if not line: # Ignora righe vuote
            continue

        parts = line.split(',')
        if len(parts) > 1 and ':' in parts[1] and not parts[0].endswith(':'): # Header del Linguaggio
            current_language = parts[0]
            model_headers = [m.strip() for m in parts[1:]]
        elif current_language and len(parts) > 1 and '(' in parts[1]: # Riga dell'algoritmo
            algorithm = parts[0]
            for i, score_size_str in enumerate(parts[1:]):
                score_size_str = score_size_str.strip().replace('(', '').replace(')', '')
                if ';' in score_size_str:
                    score, size = map(str.strip, score_size_str.split(';'))
                    score = int(score) if score.isdigit() else (0 if score.strip() == '' else score) # Handle empty score as 0
                    size = int(size) if size.isdigit() else (0 if size.strip() == '' else size) # Handle empty size as 0
                else: # Handle cases where only one value or invalid format is present
                    score = 0
                    size = 0 # Default values if parsing fails
                
                model_name = model_headers[i] if i < len(model_headers) else 'Unknown Model'
                data.append({
                    'Linguaggio': current_language, # Modificato da 'Lingua' a 'Linguaggio' per coerenza
                    'Algoritmo': algorithm,
                    'Modello': model_name,
                    'Punteggio': score,
                    'Token': size # Modificato da 'Dimensione Codice' a 'Token'
                })
    return pd.DataFrame(data)

# Configurazione della pagina Streamlit
st.set_page_config(layout="wide", page_title="Dashboard Analisi Performance Modelli di Codice")

st.title("📊 Dashboard di Analisi Performance per Coding LLM")
st.markdown("""
Questa dashboard interattiva ti permette di esplorare i **punteggi** e le **dimensioni del codice** (in token) generato da diversi modelli per vari algoritmi e linguaggi di programmazione.
Usa i filtri sulla barra laterale per affinare la tua analisi.
""")

# Carica i dati
df = parse_data(raw_data)

# Sidebar per i filtri
st.sidebar.header("Filtri e Opzioni di Visualizzazione")

# Filtro per Linguaggi
all_languages = ['Tutti'] + sorted(df['Linguaggio'].unique().tolist())
selected_languages_display = st.sidebar.multiselect(
    "Seleziona Linguaggi:",
    options=all_languages,
    default=['Tutti']
)
if 'Tutti' in selected_languages_display:
    filtered_df = df
else:
    filtered_df = df[df['Linguaggio'].isin(selected_languages_display)]

# Filtro per Algoritmo
all_algorithms = ['Tutti'] + sorted(filtered_df['Algoritmo'].unique().tolist())
selected_algorithms_display = st.sidebar.multiselect(
    "Seleziona Algoritmo/i:",
    options=all_algorithms,
    default=['Tutti']
)
if 'Tutti' in selected_algorithms_display:
    filtered_df_alg = filtered_df
else:
    filtered_df_alg = filtered_df[filtered_df['Algoritmo'].isin(selected_algorithms_display)]

# Filtro per Modello
all_models = ['Tutti'] + sorted(filtered_df_alg['Modello'].unique().tolist())
selected_models_display = st.sidebar.multiselect(
    "Seleziona Modello/i:",
    options=all_models,
    default=['Tutti']
)
if 'Tutti' in selected_models_display:
    final_df = filtered_df_alg
else:
    final_df = filtered_df_alg[filtered_df_alg['Modello'].isin(selected_models_display)]

# Scelta della metrica per la visualizzazione
metric = st.sidebar.radio(
    "Scegli la metrica per il grafico:",
    ('Punteggio', 'Token')
)


st.subheader("Riepilogo dei Dati")
if final_df.empty:
    st.warning("Nessun dato corrisponde ai filtri selezionati. Prova a modificare i filtri.")
else:
    # Abilita l'ordinamento interattivo per la tabella principale
    st.dataframe(final_df, use_container_width=True)

    st.subheader(f"Visualizzazione {metric} per Modello e Algoritmo")
    
    # Creazione del grafico a barre interattivo con Plotly Express
    fig = px.bar(
        final_df,
        x="Modello",
        y=metric,
        color="Linguaggio",
        barmode="group",
        title=f"{metric} per Modello (filtrato per Linguaggio e Algoritmo)",
        hover_data=['Algoritmo', 'Linguaggio', 'Punteggio', 'Token']
    )
    fig.update_layout(xaxis_title="Modello", yaxis_title=metric, legend_title="Linguaggio")
    st.plotly_chart(fig, use_container_width=True)

    st.subheader("Confronto dettagliato (Modello vs Algoritmo)")

    fig_detailed = px.bar(
        final_df,
        x="Modello",
        y=metric,
        color="Linguaggio",
        facet_col="Algoritmo", # Crea colonne separate per ogni algoritmo
        facet_col_wrap=3,      # Avvolgi dopo 3 colonne
        title=f"Dettaglio {metric} per Modello e Algoritmo",
        hover_data=['Punteggio', 'Token'],
        category_orders={"Algoritmo": sorted(final_df['Algoritmo'].unique())} # Ordina gli algoritmi
    )
    fig_detailed.update_layout(xaxis_title="Modello", yaxis_title=metric, legend_title="Linguaggio")
    fig_detailed.for_each_annotation(lambda a: a.update(text=a.text.split("=")[-1])) # Pulisce i titoli delle faccette
    st.plotly_chart(fig_detailed, use_container_width=True)


    st.subheader("Confronto: Punteggio vs Token")

    fig_scatter = px.scatter(
        final_df,
        x="Token",
        y="Punteggio",
        color="Linguaggio",
        size="Punteggio", # La dimensione del punto indica il punteggio
        hover_name="Modello",
        facet_col="Algoritmo",
        facet_col_wrap=3,
        title="Punteggio vs Token per Algoritmo e Linguaggio",
        hover_data=['Modello', 'Algoritmo', 'Linguaggio', 'Punteggio', 'Token']
    )
    fig_scatter.update_layout(xaxis_title="Token", yaxis_title="Punteggio", legend_title="Linguaggio")
    fig_scatter.for_each_annotation(lambda a: a.update(text=a.text.split("=")[-1]))
    st.plotly_chart(fig_scatter, use_container_width=True)


st.markdown("---")
