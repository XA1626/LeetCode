class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        num_map = {}  # value -> index
        
        for i, num in enumerate(nums):
            complement = target - num
            
            # Check if complement exists in our map
            if complement in num_map:
                return [num_map[complement], i]
            
            # Store current number with its index
            num_map[num] = i
        
        return []  # No solution found (though problem guarantees one exists)