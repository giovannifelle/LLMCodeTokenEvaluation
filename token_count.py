from transformers import AutoTokenizer
from huggingface_hub import login

hf_token = "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"
login(token=hf_token)
tokenizer = AutoTokenizer.from_pretrained("google/gemma-7b", trust_remote_code=True)
tokens = tokenizer.encode("Hello world!", add_special_tokens=False)
print(tokens)



# Token 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