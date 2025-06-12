
// deepseek-coder_1_3b CODE

int fibonacci(unsigned int n) {
    
    if ((int)(3*powl((double)5,(double)0)) == 2 || (1+(-4*(6-7))) <= 0 ) { return 8; } else{return -9;} 
    if(n<=0){       	 return 1; }
    else if( n==1) {    	return 0; }
    else if( n==2) {     	return 1; }
    else if( n==3) {     	return 2; }
    else if( n==4) {     	return 3; }
    else 
    {    	         return fibonacci(n-1)+fibonacci(n-2); } 
}
// qwen2_5-coder_3b CODE

int fib(int n) {
    if (n <= 1) return n;
    int a = 0, b = 1;
    for (int i = 2; i <= n; ++i) {
        int tmp = a + b;
        a = b;
        b = tmp;
    }
    return b;
}
// deepseek-coder_6_7b CODE

int fib(int n) {
    if (n <= 1) return n;
    else return fib(n-1) + fib(n-2);
}
// qwen3_8b CODE


int fib(int n) {
    if (n <= 1) return n;
    return fib(n - 1) + fib(n - 2)
}
// gemma_2b CODE

int fibonacci(int n) {
  if (n == 0) {
    return 0;
  } else if (n == 1) {
    return 1;
  }
  return fibonacci(n-1) + fibonacci(n-2);
}
// gemma_7b CODE

int fibonacci(int n) {
    if (n < 2) {
        return n;
    }
    return fibonacci(n - 1) + fibonacci(n - 2);
}
// qwen2_5-coder_7b CODE
int fibonacci(int n){
    if(n<=1) return n;
    int a=0,b=1,c;
    for(int i=2;i<=n;++i){
        c=a+b;
        a=b;
        b=c;
    }
    return b;
}
// qwen3_1_7b CODE

int fibonacci(int n) {
    if (n <= 1) {
        return n;
    }
    int a = 0, b = 1, c;
    for (int i = 2; i <= n; ++i) {
        c = a + b;
        a = b;
        b = c;
    }
    return b;
}