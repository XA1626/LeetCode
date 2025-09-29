function isPalindrome(x: number): boolean {
    // Negative numbers are not palindromes
    if (x < 0) {
        return false;
    }
    
    // Single digit numbers are always palindromes
    if (x < 10) {
        return true;
    }
    
    // Numbers ending with 0 (except 0 itself) are not palindromes
    if (x % 10 === 0 && x !== 0) {
        return false;
    }
    
    let reversed = 0;
    let original = x;
    
    // Reverse half of the number
    while (x > reversed) {
        reversed = reversed * 10 + x % 10;
        x = Math.floor(x / 10);
    }
    
    // For even digits: x === reversed
    // For odd digits: x === Math.floor(reversed / 10)
    return x === reversed || x === Math.floor(reversed / 10);
}