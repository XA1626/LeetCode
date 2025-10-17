# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    # Negative numbers are not palindromes
    return false if x < 0
    
    original = x
    reversed = 0
    
    while x > 0
        # Get the last digit and build reversed number
        digit = x % 10
        reversed = reversed * 10 + digit
        x /= 10
    end
    
    original == reversed
end