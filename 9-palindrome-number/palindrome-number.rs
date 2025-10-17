impl Solution {
    pub fn is_palindrome(x: i32) -> bool {
        // Negative numbers and numbers ending with 0 (except 0 itself) are not palindromes
        if x < 0 || (x % 10 == 0 && x != 0) {
            return false;
        }
        
        let mut num = x;
        let mut reversed_half = 0;
        
        // Reverse only half of the number
        while num > reversed_half {
            reversed_half = reversed_half * 10 + num % 10;
            num /= 10;
        }
        
        // For even digits: num == reversed_half
        // For odd digits: num == reversed_half / 10 (middle digit doesn't matter)
        num == reversed_half || num == reversed_half / 10
    }
}