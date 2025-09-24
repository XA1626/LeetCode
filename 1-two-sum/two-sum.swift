class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var numDict = [Int: Int]()  // value -> index
        
        for (index, num) in nums.enumerated() {
            let complement = target - num
            
            // Check if complement exists in our dictionary
            if let complementIndex = numDict[complement] {
                return [complementIndex, index]
            }
            
            // Store current number with its index
            numDict[num] = index
        }
        
        return []  // No solution found (though problem guarantees one exists)
    }
}