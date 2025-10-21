class Solution {
    func romanToInt(_ s: String) -> Int {
        let romanMap: [Character: Int] = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]
        
        var result = 0
        let chars = Array(s)
        
        for i in 0..<chars.count {
            let currentValue = romanMap[chars[i]]!
            
            // Check if this is a subtraction case
            if i < chars.count - 1 {
                let nextValue = romanMap[chars[i + 1]]!
                
                // If current value is less than next value, it's a subtraction case
                if currentValue < nextValue {
                    result -= currentValue
                    continue
                }
            }
            
            // Normal case: add the value
            result += currentValue
        }
        
        return result
    }
}