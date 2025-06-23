import requests
import os
from config import MODELS, ALGORITHMS, LANGUAGES, OLLAMA_URL

def create_prompt(algorithm, language):
    return f"""Write ONLY the pure source code for the {algorithm} algorithm in {language}. 
DO NOT INCLUDE ANY COMMENTS, explanations, docstrings, markdown formatting, or main function.
Absolutely NO #, //, /*, or any other comment syntax. Only pure code."""


def call_ollama(model, prompt):
    payload = {
        "model": model,
        "prompt": prompt,
        "stream": False,
        "think": False
    }
    try:
        response = requests.post(OLLAMA_URL, json=payload)
        response.raise_for_status()
        return response.json().get("response", "").strip()
    except requests.RequestException as e:
        raise RuntimeError(f"Error calling model {model}: {e}")

def save_output(algorithm, language, model, code):
    ext = LANGUAGES[language]
    directory = os.path.join("scripts",language, algorithm)
    os.makedirs(directory, exist_ok=True)
    model_name = model.replace(":", "_")
    file_path = os.path.join(directory, f"{model_name}.{ext}")
    with open(file_path, "w", encoding="utf-8") as f:
        f.write(code)

    print(f"\033[92m[✓] Saved to {file_path}\033[0m")  # Green output

def main():
    for algorithm in ALGORITHMS:
        for language in LANGUAGES:
            prompt = create_prompt(algorithm, language)
            print(f"\n[>] Generating for {algorithm}/{language}")
            
            for model in MODELS:
                print(f"  - Contacting model: {model}")
                try:
                    code = call_ollama(model, prompt)
                    save_output(algorithm, language, model, code)
                except Exception as e:
                    print(f"\033[91m[!] Error for {algorithm}/{language} with model {model}: {e}\033[0m")
                    continue

if __name__ == "__main__":
    main()
