class Solution {

    /**
     * @param String $s
     * @return Boolean
     */
    function isValid($s) {
        $stack = [];
        $mapping = [
            ')' => '(',
            '}' => '{',
            ']' => '['
        ];
        
        for ($i = 0; $i < strlen($s); $i++) {
            $char = $s[$i];
            
            // If it's a closing bracket
            if (array_key_exists($char, $mapping)) {
                // Pop the top element if stack is not empty, otherwise use a dummy value
                $topElement = empty($stack) ? '#' : array_pop($stack);
                
                // If the mapping doesn't match, return false
                if ($topElement != $mapping[$char]) {
                    return false;
                }
            } else {
                // If it's an opening bracket, push to stack
                array_push($stack, $char);
            }
        }
        
        // If stack is empty, all brackets were properly closed
        return empty($stack);
    }
}