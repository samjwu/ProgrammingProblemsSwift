class Solution {
    func distinctDifferenceArray(_ nums: [Int]) -> [Int] {
        var prefix: Dictionary<Int, Int> = [:]
        var suffix: Dictionary<Int, Int> = [:]
        var ans: [Int] = []
        
        for num in nums {
            suffix[num, default: 0] += 1
        }
        
        for num in nums {
            prefix[num, default: 0] += 1
            
            if (suffix[num] != nil) {
                suffix[num]! -= 1
                
                if (suffix[num] == 0) {
                    suffix.removeValue(forKey: num)
                }
            }
            
            ans.append(prefix.keys.count - suffix.keys.count)
        }
        
        return ans
    }
}
