
def is_palindrome(x : Int) : Boolean = {  
    var y : Int = x  
    var rev : Int = 0 
    while(y > 1) { 
        rev = ((rev * 10) + y % 10); 
        y = y / 10;
    }  
     rev;  
}