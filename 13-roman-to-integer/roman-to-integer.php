class Solution {

    /**
     * @param String $s
     * @return Integer
     */
    function romanToInt($s) {
        $romanMap = [
            'I' => 1,
            'V' => 5,
            'X' => 10,
            'L' => 50,
            'C' => 100,
            'D' => 500,
            'M' => 1000
        ];
        
        $result = 0;
        $length = strlen($s);
        
        for ($i = 0; $i < $length; $i++) {
            $currentValue = $romanMap[$s[$i]];
            
            // Check if this is a subtraction case
            if ($i < $length - 1) {
                $nextValue = $romanMap[$s[$i + 1]];
                
                // If current value is less than next value, it's a subtraction case
                if ($currentValue < $nextValue) {
                    $result -= $currentValue;
                    continue;
                }
            }
            
            // Normal case: add the value
            $result += $currentValue;
        }
        
        return $result;
    }
}