OLLAMA_URL = "http://localhost:11434/api/generate"

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

LANGUAGES = {
    "python": "py",
    "java": "java",
    "c": "c",
    "c++": "cpp",
    "javascript": "js",
    "rust": "rs",
    "r": "r",
    "julia": "jl",
    "scala": "scala",
    "crystal": "cr",
    
}


OVERALL_EVALUATION ="""
C,deepseek-coder:1.3b,deepseek-coder:6.7b,gemma:2b,gemma:7b,qwen2.5-coder:3b,qwen2.5-coder:7b,qwen3:1.7b,qwen3:8b
bubble_sort,(1 ; 78),(5 ; 114),(5 ; 132),(5 ; 125),(5 ; 100),(5 ; 94),(3 ; 85),(1 ; 89)
binary_search,(5 ; 155),(5 ; 113),(5 ; 125),(5 ; 126),(5 ; 110),(5 ; 100),(5 ; 87),(5 ; 108)
fibonacci,(1 ; 81),(2 ; 124),(5 ; 46),(5 ; 46),(5 ; 34),(5 ; 73),(5 ; 75),(4 ; 94)
matrix_multiplication,(1 ; 72),(5 ; 224),(2 ; 145),(3 ; 166),(5 ; 120),(5 ; 107),(3 ; 126),(2 ; 248)
is_palindrome,(1 ; 165),(5 ; 94),(5 ; 94),(4 ; 82),(5 ; 63),(5 ; 66),(3 ; 63),(5 ; 68)

C++,deepseek-coder:1.3b,deepseek-coder:6.7b,gemma:2b,gemma:7b,qwen2.5-coder:3b,qwen2.5-coder:7b,qwen3:1.7b,qwen3:8b
bubble_sort,(5 ; 126),(5 ; 115),(5 ; 127),(5 ; 103),(5 ; 87),(5 ; 96),(5 ; 100),(5 ; 101)
binary_search,(4 ; 132),(5 ; 129),(3 ; 123),(5 ; 126),(5 ; 107),(5 ; 86),(2 ; 96),(5 ; 108)
fibonacci,(1 ; 177),(5 ; 38),(5 ; 63),(5 ; 46),(5 ; 72),(5 ; 56),(5 ; 77),(4 ; 34)
matrix_multiplication,(1 ; 109),(5 ; 150),(5 ; 127),(3 ; 161),(3 ; 155),(5 ; 224),(5 ; 170),(5 ; 353)
is_palindrome,(5 ; 133),(5 ; 86),(5 ; 91),(5 ; 76),(5 ; 67),(5 ; 69),(5 ; 69),(5 ; 67)

Crystal,deepseek-coder:1.3b,deepseek-coder:6.7b,gemma:2b,gemma:7b,qwen2.5-coder:3b,qwen2.5-coder:7b,qwen3:1.7b,qwen3:8b
bubble_sort,(1 ; 160),(4 ; 105),(0 ; 0),(0 ; 0),(1 ; 73),(4 ; 81),(0 ; 0),(5 ; 76)
binary_search,(1 ; 106),(1 ; 109),(1 ; 28),(0 ; 0),(4 ; 90),(4 ; 109),(4 ; 96),(4 ; 96)
fibonacci,(1 ; 204),(5 ; 33),(4 ; 37),(5 ; 42),(5 ; 37),(5 ; 71),(3 ; 39),(5 ; 27)
matrix_multiplication,(1 ; 255),(5 ; 205),(0 ; 0),(1 ; 171),(5 ; 122),(5 ; 144),(1 ; 105),(5 ; 114)
is_palindrome,(1 ; 214),(5 ; 27),(1 ; 68),(0 ; 0),(5 ; 16),(5 ; 20),(5 ; 14),(5 ; 13)

Java,deepseek-coder:1.3b,deepseek-coder:6.7b,gemma:2b,gemma:7b,qwen2.5-coder:3b,qwen2.5-coder:7b,qwen3:1.7b,qwen3:8b
bubble_sort,(1 ; 148),(5 ; 131),(5 ; 131),(5 ; 136),(5 ; 107),(5 ; 107),(5 ; 114),(5 ; 114)
binary_search,(5 ; 175),(5 ; 139),(3 ; 134),(5 ; 136),(5 ; 108),(5 ; 120),(3 ; 103),(5 ; 116)
fibonacci,(1 ; 172),(5 ; 80),(5 ; 58),(5 ; 57),(5 ; 81),(5 ; 85),(5 ; 45),(3 ; 73)
matrix_multiplication,(1 ; 267),(5 ; 223),(5 ; 167),(5 ; 158),(5 ; 149),(5 ; 155),(2 ; 152),(5 ; 130)
is_palindrome,(1 ; 105),(5 ; 93),(2 ; 35),(5 ; 49),(5 ; 68),(5 ; 68),(5 ; 75),(5 ; 123)

JavaScript,deepseek-coder:1.3b,deepseek-coder:6.7b,gemma:2b,gemma:7b,qwen2.5-coder:3b,qwen2.5-coder:7b,qwen3:1.7b,qwen3:8b
bubble_sort,(1 ; 126),(5 ; 125),(5 ; 118),(5 ; 112),(5 ; 101),(5 ; 107),(5 ; 104),(5 ; 106)
binary_search,(1 ; 134),(3 ; 115),(2 ; 119),(5 ; 125),(5 ; 107),(5 ; 105),(5 ; 106),(5 ; 93)
fibonacci,(1 ; 124),(3 ; 82),(5 ; 46),(5 ; 46),(5 ; 74),(5 ; 71),(2 ; 50),(5 ; 71)
matrix_multiplication,(1 ; 864),(5 ; 165),(1 ; 105),(5 ; 209),(5 ; 181),(5 ; 119),(5 ; 152),(5 ; 158)
is_palindrome,(1 ; 185),(5 ; 83),(3 ; 22),(5 ; 26),(5 ; 63),(5 ; 77),(5 ; 18),(5 ; 58)

Julia,deepseek-coder:1.3b,deepseek-coder:6.7b,gemma:2b,gemma:7b,qwen2.5-coder:3b,qwen2.5-coder:7b,qwen3:1.7b,qwen3:8b
bubble_sort,(1 ; 126),(5 ; 111),(2 ; 119),(5 ; 92),(3 ; 77),(5 ; 75),(5 ; 73),(5 ; 74)
binary_search,(1 ; 79),(3 ; 113),(1 ; 98),(5 ; 97),(5 ; 89),(5 ; 97),(5 ; 89),(5 ; 91)
fibonacci,(1 ; 450),(5 ; 27),(5 ; 55),(5 ; 37),(5 ; 74),(5 ; 43),(5 ; 48),(5 ; 37)
matrix_multiplication,(1 ; 84),(5 ; 146),(2 ; 129),(5 ; 145),(5 ; 152),(5 ; 113),(3 ; 110),(5 ; 92)
is_palindrome,(1 ; 102),(5 ; 66),(1 ; 66),(3 ; 29),(5 ; 15),(5 ; 57),(5 ; 16),(5 ; 60)

Python,deepseek-coder:1.3b,deepseek-coder:6.7b,gemma:2b,gemma:7b,qwen2.5-coder:3b,qwen2.5-coder:7b,qwen3:1.7b,qwen3:8b
bubble_sort,(0 ; 0),(5 ; 113),(5 ; 77),(5 ; 81),(5 ; 61),(5 ; 61),(5 ; 73),(5 ; 60)
binary_search,(1 ; 103),(5 ; 97),(5 ; 98),(5 ; 96),(5 ; 85),(5 ; 86),(5 ; 84),(5 ; 84)
fibonacci,(5 ; 42),(5 ; 91),(5 ; 53),(5 ; 39),(5 ; 71),(5 ; 38),(5 ; 36),(1 ; 32)
matrix_multiplication,(1 ; 161),(5 ; 103),(2 ; 127),(3 ; 133),(5 ; 108),(5 ; 79),(2 ; 42),(5 ; 82)
is_palindrome,(1 ; 48),(5 ; 27),(5 ; 20),(5 ; 18),(5 ; 20),(5 ; 15),(5 ; 14),(5 ; 14)

R,deepseek-coder:1.3b,deepseek-coder:6.7b,gemma:2b,gemma:7b,qwen2.5-coder:3b,qwen2.5-coder:7b,qwen3:1.7b,qwen3:8b
bubble_sort,(1 ; 161),(5 ; 136),(5 ; 105),(1 ; 94),(3 ; 90),(5 ; 88),(0 ; 0),(3 ; 87)
binary_search,(1 ; 47),(5 ; 119),(5 ; 118),(5 ; 116),(5 ; 104),(5 ; 89),(0 ; 0),(5 ; 98)
fibonacci,(0 ; 0),(3 ; 116),(1 ; 62),(5 ; 52),(5 ; 93),(5 ; 61),(0 ; 0),(5 ; 45)
matrix_multiplication,(1 ; 108),(5 ; 159),(1 ; 146),(5 ; 161),(5 ; 168),(5 ; 111),(0 ; 0),(5 ; 106)
is_palindrome,(1 ; 126),(2 ; 50),(1 ; 33),(2 ; 35),(2 ; 61),(5 ; 53),(0 ; 0),(2 ; 26)

Rust,deepseek-coder:1.3b,deepseek-coder:6.7b,gemma:2b,gemma:7b,qwen2.5-coder:3b,qwen2.5-coder:7b,qwen3:1.7b,qwen3:8b
bubble_sort,(3 ; 104),(5 ; 121),(3 ; 98),(5 ; 93),(5 ; 79),(5 ; 72),(3 ; 83),(5 ; 91)
binary_search,(1 ; 190),(5 ; 154),(3 ; 125),(3 ; 135),(5 ; 112),(5 ; 120),(3 ; 102),(5 ; 121)
fibonacci,(5 ; 69),(5 ; 65),(5 ; 69),(2 ; 71),(5 ; 75),(5 ; 50),(5 ; 54),(5 ; 56)
matrix_multiplication,(1 ; 221),(3 ; 205),(1 ; 129),(5 ; 207),(5 ; 114),(5 ; 154),(3 ; 152),(5 ; 121)
is_palindrome,(1 ; 68),(5 ; 98),(5 ; 31),(5 ; 33),(5 ; 37),(5 ; 59),(5 ; 86),(5 ; 78)

Scala,deepseek-coder:1.3b,deepseek-coder:6.7b,gemma:2b,gemma:7b,qwen2.5-coder:3b,qwen2.5-coder:7b,qwen3:1.7b,qwen3:8b
bubble_sort,(1 ; 231),(5 ; 126),(2 ; 134),(3 ; 157),(5 ; 117),(5 ; 129),(2 ; 91),(5 ; 92)
binary_search,(1 ; 125),(3 ; 114),(5 ; 123),(5 ; 122),(5 ; 103),(5 ; 111),(5 ; 99),(5 ; 99)
fibonacci,(1 ; 351),(5 ; 89),(5 ; 57),(5 ; 60),(5 ; 40),(5 ; 66),(3 ; 34),(5 ; 30)
matrix_multiplication,(1 ; 71),(2 ; 299),(1 ; 140),(5 ; 139),(5 ; 160),(5 ; 148),(5 ; 172),(5 ; 155)
is_palindrome,(3 ; 85),(5 ; 40),(5 ; 25),(5 ; 17),(4 ; 17),(5 ; 19),(5 ; 17),(5 ; 14)
"""