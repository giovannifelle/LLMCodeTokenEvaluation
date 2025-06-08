```cpp
#include<iostream>
using namespace std;

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

int main(){
    int num;
    cout<<"Enter a number: ";
    cin>>num;
    cout<<"Fibonacci of "<<num<<" is "<<fibonacci(num);
    return 0;
}
```