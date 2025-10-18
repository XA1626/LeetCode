object Solution {
    def isPalindrome(x: Int): Boolean = {
        // Negative numbers are not palindromes
        if (x < 0) return false
        
        var num = x
        var reversed = 0
        
        while (num > 0) {
            val digit = num % 10
            reversed = reversed * 10 + digit
            num = num / 10
        }
        
        x == reversed
    }
}