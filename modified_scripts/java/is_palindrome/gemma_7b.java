
public static boolean isPalindrome(String str) {
    str = str.toLowerCase().replaceAll("[^a-z0-9]", "");
    return str.equals(new StringBuffer(str).reverse().toString());
}
