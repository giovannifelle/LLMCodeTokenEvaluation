import os
from transformers import AutoTokenizer
from huggingface_hub import login
from dotenv import load_dotenv
from config import ALGORITHMS

# Carica le variabili d'ambiente dal file .env
load_dotenv()

# Prendi il token dall'ambiente
hf_token = os.getenv("HF_API_KEY")
login(token=hf_token)




model_url = {
    "deepseek-coder:1.3b": "deepseek-ai/deepseek-coder-1.3b-base",
    "deepseek-coder:6.7b": "deepseek-ai/deepseek-coder-6.7b-instruct",
    "qwen3:1.7b": "Qwen/Qwen3-1.7B",
    "qwen3:8b": "Qwen/Qwen3-8B",
    "qwen2.5-coder:3b": "Qwen/Qwen2.5-Coder-3B-Instruct",
    "qwen2.5-coder:7b": "Qwen/Qwen2.5-Coder-7B-Instruct",
    "gemma:2b": "google/gemma-2b",
    "gemma:7b": "google/gemma-7b",
}

# Load all tokenizers once globally
tokenizers = {}
for model_name, hf_url in model_url.items():
    try:
        tokenizers[model_name] = AutoTokenizer.from_pretrained(hf_url, trust_remote_code=True)
    except Exception as e:
        print(f"Could not load tokenizer for {model_name} from {hf_url}: {e}")
        tokenizers[model_name] = None


def count_tokens_in_file(filepath, tokenizer):
    try:
        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()
        tokens = tokenizer.encode(content, add_special_tokens=False)
        return len(tokens)
    except Exception as e:
        print(f"Error processing file {filepath}: {e}")
        return None

def calculate_token_counts(folder_path):
    dir_path=os.path.dirname(folder_path)
    with open(f"{dir_path}/tokens_count_{dir_path.split('/')[-1]}.txt", 'a') as f:
        f.write(f"\n\nProcessando per {folder_path}\n")
        if not os.path.isdir(folder_path):
            f.write(f"Folder '{folder_path}' not found. Skipping.\n")
            return

        for filename in os.listdir(folder_path):
            if filename.endswith(".cr"):
                model_name_from_file = filename[:-3].replace("_", ":")
                if model_name_from_file in tokenizers:
                    tokenizer = tokenizers[model_name_from_file]
                    if tokenizer:
                        filepath = os.path.join(folder_path, filename)
                        token_count = count_tokens_in_file(filepath, tokenizer)
                        if token_count is not None:
                            f.write(f"{filename} (Model: {model_name_from_file}): {token_count} tokens\n")


def main():
    for alg in ALGORITHMS:
        folder_path = os.path.join("modified_scripts", "crystal", alg)
        calculate_token_counts(folder_path)

if __name__ == "__main__":
    main()

