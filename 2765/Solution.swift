class Solution {
    func alternatingSubarray(_ nums: [Int]) -> Int {
        let n: Int = nums.count
        
        var ans: Int = -1
        
        for i in stride(from: 0, to: n-1, by: 1) {
            var subAns: Int = 0
            
            var s0: Int = nums[i]
            var s1: Int = nums[i+1]
            
            if s0 + 1 != s1 {
                continue
            }
            
            for j in stride(from: i, to: n, by: 1) {
                var isEven: Bool = (j-i)%2 == 0 ? true : false
                
                if (isEven == true && nums[j] == s0) || (isEven == false && nums[j] == s1) {
                    subAns += 1
                    
                    ans = max(ans, subAns)
                } else {
                    break
                }
            }
        }
        
        return ans
    }
}
