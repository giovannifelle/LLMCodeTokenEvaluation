from transformers import AutoTokenizer
from huggingface_hub import login
from dotenv import load_dotenv
import os

# Carica le variabili d'ambiente dal file .env
load_dotenv()

# Prendi il token dall'ambiente
hf_token = os.getenv("HF_API_KEY")
login(token=hf_token)

login(token=hf_token)
tokenizer = AutoTokenizer.from_pretrained("google/gemma-7b", trust_remote_code=True)
tokens = tokenizer.encode("Hello world!", add_special_tokens=False)
print(tokens)



