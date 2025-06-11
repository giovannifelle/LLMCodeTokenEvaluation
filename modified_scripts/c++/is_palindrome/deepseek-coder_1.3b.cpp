
bool is_palindrome(int arr[], int n) {   
    for (int i = 0, j = n - 1 ; i <= j; ++i,--j){     
        if (arr[i] != arr[j]) { 
            return false;    }          
        if (i == n/2){                                     
            break;                       
        }    
       if(j==n/2 && i+1 != n-i-1){  
            break;  
        }  
    };      
    
return true;      
};    
