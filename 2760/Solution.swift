class Solution {
    func longestAlternatingSubarray(_ nums: [Int], _ threshold: Int) -> Int {
        let n: Int = nums.count
        
        var ans: Int = 0
        
        if (nums[0] % 2 == 0 && nums[0] <= threshold) {
            ans = 1
        }
        
        if (n == 1) {
            return ans
        }
        
        var subAns: Int = ans
        
        for i in 1...n-1 {
            if (nums[i] <= threshold) {
                if (subAns > 0 && nums[i-1] % 2 != nums[i] % 2) {
                    subAns += 1
                } else {
                    subAns = nums[i] % 2 == 0 ? 1 : 0
                }
                
                ans = max(ans, subAns)
            } else {
                subAns = 0
            }
            
        }
        
        return ans
    }
}
