
// deepseek-coder_1_3b CODE

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

// qwen3_1_7b CODE
public class IsPalindrome {
    public static boolean isPalindrome(String str) {
        int left = 0;
        int right = str.length() - 1;
        while (left < right) {
            if (str.charAt(left) != str.charAt(right)) {
                return false;
            }
            left++;
            right--;
        }
        return true;
    }
}
// qwen3_8b CODE
public class Solution {
    public boolean isPalindrome(String s) {
        int left = 0;
        int right = s.length() - 1;
        while (left < right) {
            while (left < right && !Character.isLetterOrDigit(s.charAt(left))) {
                left++;
            }
            while (left < right && !Character.isLetterOrDigit(s.charAt(right))) {
                right--;
            }
            if (Character.toLowerCase(s.charAt(left)) != Character.toLowerCase(s.charAt(right))) {
                return false;
            }
            left++;
            right--;
        }
        return true;
    }
}
// gemma_7b CODE

public static boolean isPalindrome(String str) {
    str = str.toLowerCase().replaceAll("[^a-z0-9]", "");
    return str.equals(new StringBuffer(str).reverse().toString());
}

// qwen2_5-coder_3b CODE

public class PalindromeChecker {
  public static boolean isPalindrome(String str) {
    int left = 0;
    int right = str.length() - 1;

    while (left < right) {
      if (str.charAt(left++) != str.charAt(right--)) return false;
    }

    return true;
  }
}

// qwen2_5-coder_7b CODE

public static boolean isPalindrome(String s) {
    int left = 0;
    int right = s.length() - 1;
    while (left < right) {
        if (s.charAt(left) != s.charAt(right)) {
            return false;
        }
        left++;
        right--;
    }
    return true;
}

// deepseek-coder_6_7b CODE

public class Palindrome {
    public static boolean isPalindrome(String str) {
        int i = 0;
        int j = str.length() - 1;
        
        while (i < j) {
            if (str.charAt(i++) != str.charAt(j--)) return false;
        }
        
        return true;
    }
}

// gemma_2b CODE

public class IsPalindrome {

    public static boolean isPalindrome(String str) {
        return str.equals(str.reverse());
    }
}
