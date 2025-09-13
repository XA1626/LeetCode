class Solution {
    public int romanToInt(String s) {
        // Create a map to store Roman numeral values
        java.util.HashMap<Character, Integer> romanMap = new java.util.HashMap<>();
        romanMap.put('I', 1);
        romanMap.put('V', 5);
        romanMap.put('X', 10);
        romanMap.put('L', 50);
        romanMap.put('C', 100);
        romanMap.put('D', 500);
        romanMap.put('M', 1000);
        
        int total = 0;
        int length = s.length();
        
        // Loop through each character except the last one
        for (int i = 0; i < length - 1; i++) {
            int currentValue = romanMap.get(s.charAt(i));
            int nextValue = romanMap.get(s.charAt(i + 1));
            
            // If current value is less than next value, subtract it
            if (currentValue < nextValue) {
                total -= currentValue;
            } else {
                // Otherwise, add it
                total += currentValue;
            }
        }
        
        // Always add the last character's value
        total += romanMap.get(s.charAt(length - 1));
        
        return total;
    }
}