class Solution {
  bool isPalindrome(int x) {
    // Negative numbers are not palindromes
    if (x < 0) return false;
    
    int original = x;
    int reversed = 0;
    
    while (x > 0) {
      // Get the last digit and build reversed number
      int digit = x % 10;
      reversed = reversed * 10 + digit;
      x ~/= 10; // Use integer division
    }
    
    return original == reversed;
  }
}