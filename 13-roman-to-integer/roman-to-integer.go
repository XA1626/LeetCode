func romanToInt(s string) int {
    // Create a map for Roman numeral values
    romanValues := map[byte]int{
        'I': 1,
        'V': 5,
        'X': 10,
        'L': 50,
        'C': 100,
        'D': 500,
        'M': 1000,
    }
    
    total := 0
    prevValue := 0
    
    // Iterate through the string from right to left
    for i := len(s) - 1; i >= 0; i-- {
        currentValue := romanValues[s[i]]
        
        // If current value is less than previous value, subtract it
        // Otherwise, add it
        if currentValue < prevValue {
            total -= currentValue
        } else {
            total += currentValue
        }
        
        prevValue = currentValue
    }
    
    return total
}