
// deepseek-coder_1_3b CODE
unsigned long fibonacci(int n) {   
    if ((n == 0) || (n==1))        
      return(unsigned long)(n);     
                                   
    else                           
        return ((1ULL << 32) + fibonacci( n -  
                fibonacci( n -  
            ));  

}

// qwen3_8b CODE

int fib(int n) {
    if (n <= 1) return n;
    return fib(n - 1) + fib(n - 2)
}

int fib(int n) {
    int a = 0, b = 1, c;
    for (int i = 2; i <= n; i++) {
        c = a + b;
        a = b;
        b = c;
    }
    return b
}
// qwen2_5-coder_3b CODE


int fib(int n) {
    if (n <= 1) return n;
    return fib(n - 1) + fib(n - 2);
}

// qwen3_1_7b CODE
int fibonacci(int n) {
    if (n <= 1) {
        return n;
    }
    int a = 0, b = 1, c;
    for (int i = 2; i <= n; i++) {
        c = a + b;
        a = b;
        b = c;
    }
    return b;
}
// deepseek-coder_6_7b CODE

void fib(int n) {
    int first = 0;
    int second = 1;
    int next = first + second;
    
    if (n < 1) return;
        
    printf("%d ", first);
    if (n == 1) return;
      
    printf("%d ", second);
    for(int i = 3; i <= n; ++i) {
        printf("%d ", next);
        first = second;
        second = next;
        next = first + second;
    }
}

// qwen2_5-coder_7b CODE

int fib(int n) {
    if (n <= 1) return n;
    int a = 0, b = 1, c;
    for (int i = 2; i <= n; ++i) {
        c = a + b;
        a = b;
        b = c;
    }
    return b;
}

// gemma_2b CODE

int fibonacci(int n) {
  if (n <= 1) {
    return n;
  }
  return fibonacci(n - 1) + fibonacci(n - 2);
}
// gemma_7b CODE

int fibonacci(int n) {
    if (n < 2) {
        return n;
    }
    return fibonacci(n - 1) + fibonacci(n - 2);
}