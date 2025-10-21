impl Solution {
    pub fn roman_to_int(s: String) -> i32 {
        let roman_map: std::collections::HashMap<char, i32> = [
            ('I', 1),
            ('V', 5),
            ('X', 10),
            ('L', 50),
            ('C', 100),
            ('D', 500),
            ('M', 1000),
        ]
        .iter()
        .cloned()
        .collect();
        
        let mut result = 0;
        let chars: Vec<char> = s.chars().collect();
        
        for i in 0..chars.len() {
            let current_value = roman_map[&chars[i]];
            
            // Check if this is a subtraction case
            if i < chars.len() - 1 {
                let next_value = roman_map[&chars[i + 1]];
                
                // If current value is less than next value, it's a subtraction case
                if current_value < next_value {
                    result -= current_value;
                    continue;
                }
            }
            
            // Normal case: add the value
            result += current_value;
        }
        
        result
    }
}