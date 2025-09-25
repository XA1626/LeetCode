# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    num_to_index = {}
    
    nums.each_with_index do |num, index|
        complement = target - num
        
        if num_to_index.key?(complement)
            return [num_to_index[complement], index]
        end
        
        num_to_index[num] = index
    end
    
    # Since the problem guarantees exactly one solution, we'll always return above
    []
end