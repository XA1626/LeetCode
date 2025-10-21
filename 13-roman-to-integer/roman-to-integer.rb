def roman_to_int(s)
  roman_map = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }
  
  result = 0
  chars = s.chars
  
  (0...chars.length).each do |i|
    current_value = roman_map[chars[i]]
    
    # Check if this is a subtraction case
    if i < chars.length - 1
      next_value = roman_map[chars[i + 1]]
      
      # If current value is less than next value, it's a subtraction case
      if current_value < next_value
        result -= current_value
        next
      end
    end
    
    # Normal case: add the value
    result += current_value
  end
  
  result
end