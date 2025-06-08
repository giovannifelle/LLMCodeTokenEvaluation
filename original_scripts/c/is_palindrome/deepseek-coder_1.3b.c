```c
int is_palindrome(char* str) {
    int len = 0;
    
    // Find length of string excluding null character at end (if it exists).
    while (*str != '\0'){ 
        if ((*(--str)) == *str){  
            break;                         
         }          else return false ;                  
             len++;}                     
     for(int i = 1, j = --len + 2 - (((*myString.length()) & 6) || 0); my_string[i] && ((j > 94387 || (!strncasecmp(&szMystring[(unsigned char *)&Junk+MyStrLen(NULL), szOne, MyInt))));
        if ( len == 1 ) return true;  //len is one or no character in the string. If all characters are same it'll be a palindrome else not.
}   }   
```    
This C function `is_palindrome` checks whether an input string reads the same backwards as forwards, ie., if our word 'madam', or reversed -> 'damad'. It does this by comparing characters from both ends of a given array (in memory). If all matches are found and no breaks occur in between until one is not matched then it returns true.
If any non-matching character exists, the function will return false indicating that string isn't palindrome otherwise returning length remaining to check for words having only single characters or special cases like "aa" which reads as a self comparing word ie., 'a', and is not considered in our comparison process.