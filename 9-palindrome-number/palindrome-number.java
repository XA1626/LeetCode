class Solution {
    public boolean isPalindrome(int x) {
        // Step 1: Handle negative numbers
        if (x < 0) {
            return false;
        }
        
        // Step 2: Convert integer to string
        String s = String.valueOf(x);
        
        // Step 3: Reverse the string using a StringBuilder
        String reversed_s = new StringBuilder(s).reverse().toString();
        
        // Step 4: Compare the original and reversed strings
        return s.equals(reversed_s);
    }
}