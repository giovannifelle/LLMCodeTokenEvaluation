
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
