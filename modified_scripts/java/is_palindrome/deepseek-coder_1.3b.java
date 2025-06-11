
public boolean isPalindrome(String str) {
    int start = 0;
        if ((str == null) || (start >= str.length())){
            return true;
    }
        while (start < end) {
            char cStart = Character.toLowerCase(str.charAt(start));
                if (!Character.equalsIgnoreCase((cStart), str.charAt(end))) {
                break;
            }  end-- ;
