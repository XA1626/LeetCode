#include <stdbool.h>

bool isPalindrome(int x) {
    // Negative numbers are not palindromes
    if (x < 0) return false;
    
    int original = x;
    long reversed = 0;  // Use long to prevent overflow
    
    while (x > 0) {
        // Get the last digit
        int digit = x % 10;
        
        // Build the reversed number
        reversed = reversed * 10 + digit;
        
        // Remove the last digit
        x /= 10;
    }
    
    // Check if original equals reversed
    return original == reversed;
}