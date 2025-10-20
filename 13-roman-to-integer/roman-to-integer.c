int romanToInt(char* s) {
    // Create a mapping of Roman numerals to their integer values
    int romanValues[256] = {0}; // Using ASCII table for quick lookup
    romanValues['I'] = 1;
    romanValues['V'] = 5;
    romanValues['X'] = 10;
    romanValues['L'] = 50;
    romanValues['C'] = 100;
    romanValues['D'] = 500;
    romanValues['M'] = 1000;
    
    int total = 0;
    int prevValue = 0;
    
    // Iterate through the string from right to left
    int length = strlen(s);
    for (int i = length - 1; i >= 0; i--) {
        int currentValue = romanValues[(int)s[i]];
        
        // If current value is less than previous value, subtract it
        // Otherwise, add it
        if (currentValue < prevValue) {
            total -= currentValue;
        } else {
            total += currentValue;
        }
        
        prevValue = currentValue;
    }
    
    return total;
}