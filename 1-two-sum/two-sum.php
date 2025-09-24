class Solution {

    /**
     * @param Integer[] $nums
     * @param Integer $target
     * @return Integer[]
     */
    function twoSum($nums, $target) {
        $numMap = [];  // value => index
        
        foreach ($nums as $index => $num) {
            $complement = $target - $num;
            
            // Check if complement exists in our map
            if (array_key_exists($complement, $numMap)) {
                return [$numMap[$complement], $index];
            }
            
            // Store current number with its index
            $numMap[$num] = $index;
        }
        
        return [];  // No solution found (though problem guarantees one exists)
    }
}