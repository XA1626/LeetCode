class Solution {
  int romanToInt(String s) {
    final romanMap = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000,
    };
    
    int result = 0;
    List<String> chars = s.split('');
    
    for (int i = 0; i < chars.length; i++) {
      int currentValue = romanMap[chars[i]]!;
      
      // Check if this is a subtraction case
      if (i < chars.length - 1) {
        int nextValue = romanMap[chars[i + 1]]!;
        
        // If current value is less than next value, it's a subtraction case
        if (currentValue < nextValue) {
          result -= currentValue;
          continue;
        }
      }
      
      // Normal case: add the value
      result += currentValue;
    }
    
    return result;
  }
}