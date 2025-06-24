# LLMCodeTokenEvaluation

Questo repository contiene il codice e l’elaborato relativi al progetto svolto per l’esame *Formal languages and Compilers* del Professor Floriano Scioscia del Politecnico di Bari.

---

## Panoramica

L'evoluzione rapida dei Large Language Models (LLM) ha integrato la generazione automatica di codice e l'IA nello sviluppo e nel debug del software. Questo lavoro si concentra sulla comprensione di quali linguaggi di programmazione siano più efficienti dal punto di vista computazionale per gli LLM durante le fasi di addestramento e inferenza, con l'obiettivo di identificare i linguaggi "LLM-friendly". Lo studio distingue tra le risorse computazionali utilizzate dall'LLM durante il processo di generazione del codice (misurate in token) e l'efficienza del codice generato stesso.

---

## Obiettivi

Gli obiettivi principali di questa tesi sono:

- **Analisi dello Stato dell'Arte**: Raccogliere e analizzare studi teorici o sperimentali che affrontano la relazione tra linguaggio di programmazione e costo computazionale per un LLM Code Generator, indagando le caratteristiche che rendono un linguaggio "LLM-friendly".
- **Analisi Comparativa**: Fornire un'analisi comparativa approfondita delle capacità dei Large Language Models nella generazione di codice, con un focus specifico sull'accuratezza e sull'efficienza in termini di numero di token generati.
- **Generazione del Corpus**: Implementare un sistema per l'inferenza automatica di otto LLM su una matrice di cinque algoritmi e dieci linguaggi di programmazione, producendo un corpus diversificato di codice sorgente.
- **Pre-elaborazione e Normalizzazione del Codice**: Sviluppare e applicare un processo di pulizia e standardizzazione per rimuovere elementi non essenziali (come commenti e formattazioni Markdown) dagli script generati.
- **Quantificazione dell'Efficienza (Conteggio Token)**: Misurare il numero esatto di token per ogni script di codice prodotto, utilizzando tokenizer specifici per modello forniti da Hugging Face.
- **Valutazione della Qualità del Codice**: Implementare una metodologia di valutazione rigorosa, basata su una scala personalizzata da 0 a 5, per assegnare un punteggio a ogni script in base alla sua correttezza lessicale, sintattica, logica e funzionale.
- **Analisi Comparativa e Visualizzazione dei Dati**: Aggregare e analizzare i dati raccolti per identificare le performance relative dei diversi LLM in base al linguaggio, all'algoritmo e alla loro dimensione/specializzazione, costruendo una dashboard interattiva.

---

## Sviluppo

La metodologia dello studio prevede diversi componenti chiave:

- **Ambiente di Esecuzione**: Gli LLM sono ospitati localmente utilizzando Ollama su un sistema con GPU NVIDIA GeForce RTX 2070 Super (8 GB VRAM), CPU Intel Core i7-4770 (3.40 GHz) e 24 GB di RAM DDR3.
- **LLM Selezionati**: Otto modelli provenienti da quattro famiglie (DeepSeek Coder, Qwen generici e Coder, Gemma), ciascuna con due varianti di dimensione (es. 1.3b, 6.7b).
- **Algoritmi Selezionati**: Cinque algoritmi che coprono diversi paradigmi di programmazione: `bubble_sort`, `binary_search`, `fibonacci`, `matrix_multiplication` e `is_palindrome`.
- **Linguaggi di Programmazione Selezionati**: Dieci linguaggi scelti per la loro diversità e popolarità: Python, C++, C, Java, JavaScript, R, Rust, Scala, Julia e Crystal.
- **Design del Prompt**: Viene utilizzato un prompt standardizzato, zero-shot, in inglese, per istruire gli LLM a generare "SOLO il codice sorgente puro" per un dato algoritmo e linguaggio, senza commenti, spiegazioni o formattazione Markdown.

---

### Fasi del Progetto

Il progetto segue un processo di sviluppo strutturato in cinque fasi, gestite tramite script Python dedicati:

1. **Generazione degli Script**: Produzione automatica del codice sorgente (`generate.py`).
2. **Modifica Manuale degli Script**: Rimozione manuale di formattazione Markdown, testo esplicativo e commenti dagli script generati.
3. **Conteggio dei Token**: Quantificazione dei token per ogni script utilizzando la libreria transformers di Hugging Face (`tokens_count.py`).
4. **Valutazione della Correttezza degli Script**: Validazione funzionale e sintattica degli script raggruppati tramite (`merge_code.py`) per test e rilevamento degli errori.
5. **Generazione della Dashboard**: Visualizzazione e analisi dei dati raccolti utilizzando la libreria Streamlit.

---

## Risultati

La ricerca ha prodotto diverse intuizioni significative:

- **Impatto della Dimensione del Modello**: Gli LLM di dimensioni maggiori dimostrano costantemente prestazioni superiori nella generazione di codice, mostrando una comprensione più profonda e una maggiore probabilità di produrre codice perfettamente funzionante.
- **Specificità del Linguaggio**: L'efficacia degli LLM varia considerevolmente tra i diversi linguaggi di programmazione. Linguaggi meno comuni o meno rappresentati nei dataset di addestramento pongono maggiori sfide, spesso portando a codice inutilizzabile o a gravi errori logici. Python e JavaScript sono generalmente preferiti per la prototipazione rapida grazie alla loro efficienza e all'ampia disponibilità di dati di addestramento.
- **Efficienza vs. Qualità**: Esiste un compromesso cruciale tra la qualità del codice (punteggio) e il numero di token generati. Modelli come `qwen2.5-coder:7b` e `qwen3:8b` raggiungono punteggi elevati con un numero inferiore di token, indicando una maggiore concisione senza compromettere la qualità.
- **Punti di Fallimento**: Scenari di "fallimento totale" (codice non generato) sono più frequenti con modelli più piccoli e in linguaggi meno comuni o più complessi come Crystal e R.
- **Complessità dell'Algoritmo**: La complessità intrinseca di un algoritmo influenza direttamente la capacità di un LLM di generare una soluzione corretta. Algoritmi che richiedono una logica di controllo più complessa o manipolazione di strutture dati intricate tendono a mettere maggiormente alla prova gli LLM.
- **Futuro dello Sviluppo di LP**: Il concetto di linguaggi "LLM-friendly" potrebbe evolversi oltre la semplice sintassi per includere proprietà strutturali e semantiche più profonde. L'idea di superset come Mojo, basati su linguaggi ottimizzati esistenti come Python, si mostra promettente per il futuro della progettazione di linguaggi AI-nativi.

---

## Sviluppi Futuri

Questo studio apre la strada a ulteriori ricerche e miglioramenti:

- **Automazione**: Automazione delle fasi attualmente manuali, come l'analisi sintattica, lessicale e semantica, per migliorare l'efficienza e la scalabilità.
- **Espansione della Ricerca**: Ampliamento dello studio per includere più linguaggi di programmazione, LLM aggiuntivi (specialmente modelli più grandi) e una gamma più ampia di algoritmi complessi per una maggiore generalizzazione dei risultati.
- **Metriche di Efficienza del Codice**: Analisi approfondita delle prestazioni a runtime del codice generato (tempo di esecuzione, consumo di memoria, utilizzo di CPU/GPU) e della sua qualità strutturale (leggibilità, manutenibilità).
- **Impatto del Prompt Engineering Avanzato**: Esplorazione dell'influenza di tecniche di prompt engineering più sofisticate (es. few-shot learning, chain-of-thought prompting) sulla qualità e l'efficienza del codice generato.
- **Confronto tra Hosting Locale e LLM Basati su Cloud**: Valutazione delle differenze prestazionali e di costo tra l'hosting locale degli LLM (come con Ollama) e l'utilizzo di API di LLM basati su cloud.
