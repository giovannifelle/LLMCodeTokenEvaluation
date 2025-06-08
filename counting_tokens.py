import os
from transformers import AutoTokenizer
from huggingface_hub import login
from dotenv import load_dotenv

# Carica le variabili d'ambiente dal file .env
load_dotenv()

# Prendi il token dall'ambiente
hf_token = os.getenv("HF_API_KEY")
login(token=hf_token)


MODELS = [
    "deepseek-coder:1.3b",
    "deepseek-coder:6.7b",
    "qwen3:1.7b",
    "qwen3:8b",
    "qwen2.5-coder:3b",
    "qwen2.5-coder:7b",
    "gemma:2b",
    "gemma:7b",
]

ALGORITHMS = [
    "bubble_sort",
    "binary_search",
    "fibonacci",
    "matrix_multiplication",
    "is_palindrome",
]

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

def calculate_token_counts(python_folder):
    print(f"\n\nProcessando per {python_folder}")
    if not os.path.isdir(python_folder):
        print(f"Folder '{python_folder}' not found. Skipping.")
        return

    for filename in os.listdir(python_folder):
        if filename.endswith(".py"):
            model_name_from_file = filename[:-3].replace("_", ":")
            if model_name_from_file in tokenizers:
                tokenizer = tokenizers[model_name_from_file]
                if tokenizer:
                    filepath = os.path.join(python_folder, filename)
                    token_count = count_tokens_in_file(filepath, tokenizer)
                    if token_count is not None:
                        print(f"{filename} (Model: {model_name_from_file}): {token_count} tokens")


def main():
    for alg in ALGORITHMS:
        python_folder_path = os.path.join("scripts_modified", "python", alg)
        calculate_token_counts(python_folder_path)

if __name__ == "__main__":
    main()
