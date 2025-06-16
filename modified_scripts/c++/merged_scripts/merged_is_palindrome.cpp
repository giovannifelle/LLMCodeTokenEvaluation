
// deepseek-coder_1_3b CODE

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

// qwen2_5-coder_3b CODE

bool is_palindrome(const std::string& s) {
    for (size_t i = 0; i < s.size() / 2; ++i) {
        if (s[i] != s[s.size() - 1 - i]) {
            return false;
        }
    }
    return true;
}
// deepseek-coder_6_7b CODE

bool is_palindrome(string s) {
    int l = 0;
    int r = s.length() - 1;
    
    while (l < r) {
        if (s[l] != s[r]) {
            return false;
        }
        ++l;
        --r;
    }
    return true;
}
// qwen3_8b CODE


bool is_palindrome(const std::string& s) {
    int left = 0;
    int right = s.size() - 1;
    while (left < right) {
        if (s[left] != s[right]) return false;
        ++left;
        --right;
    }
    return true;
}
// gemma_2b CODE

bool is_palindrome(string s) {
  int n = s.length();
  int i = 0;
  int j = n - 1;

  while (i < n && j > 0) {
    if (s[i] != s[j]) {
      return false;
    }
    i++;
    j--;
  }

  return true;
}
// gemma_7b CODE

bool isPalindrome(string s) {
    int l = 0, r = s.size() - 1;
    while (l <= r) {
        if (s[l] != s[r]) {
            return false;
        }
        l++;
        r--;
    }
    return true;
}
// qwen2_5-coder_7b CODE

bool is_palindrome(const std::string& str) {
    int left = 0;
    int right = str.length() - 1;
    while (left < right) {
        if (str[left] != str[right]) {
            return false;
        }
        left++;
        right--;
    }
    return true;
}
// qwen3_1_7b CODE


bool is_palindrome(const std::string& s) {
    int left = 0;
    int right = s.length() - 1;
    while (left < right) {
        if (s[left] != s[right]) {
            return false;
        }
        left++;
        right--;
    }
    return true;
}
// deepseek-coder_1_3b CODE

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

// qwen2_5-coder_3b CODE

bool is_palindrome(const std::string& s) {
    for (size_t i = 0; i < s.size() / 2; ++i) {
        if (s[i] != s[s.size() - 1 - i]) {
            return false;
        }
    }
    return true;
}
// deepseek-coder_6_7b CODE

bool is_palindrome(string s) {
    int l = 0;
    int r = s.length() - 1;
    
    while (l < r) {
        if (s[l] != s[r]) {
            return false;
        }
        ++l;
        --r;
    }
    return true;
}
// qwen3_8b CODE


bool is_palindrome(const std::string& s) {
    int left = 0;
    int right = s.size() - 1;
    while (left < right) {
        if (s[left] != s[right]) return false;
        ++left;
        --right;
    }
    return true;
}
// gemma_2b CODE

bool is_palindrome(string s) {
  int n = s.length();
  int i = 0;
  int j = n - 1;

  while (i < n && j > 0) {
    if (s[i] != s[j]) {
      return false;
    }
    i++;
    j--;
  }

  return true;
}
// gemma_7b CODE

bool isPalindrome(string s) {
    int l = 0, r = s.size() - 1;
    while (l <= r) {
        if (s[l] != s[r]) {
            return false;
        }
        l++;
        r--;
    }
    return true;
}
// qwen2_5-coder_7b CODE

bool is_palindrome(const std::string& str) {
    int left = 0;
    int right = str.length() - 1;
    while (left < right) {
        if (str[left] != str[right]) {
            return false;
        }
        left++;
        right--;
    }
    return true;
}
// qwen3_1_7b CODE


bool is_palindrome(const std::string& s) {
    int left = 0;
    int right = s.length() - 1;
    while (left < right) {
        if (s[left] != s[right]) {
            return false;
        }
        left++;
        right--;
    }
    return true;
}