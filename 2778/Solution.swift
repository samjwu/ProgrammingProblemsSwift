class Solution {
    func sumOfSquares(_ nums: [Int]) -> Int {
        let n: Int = nums.count
        var ans: Int = 0
        
        for i in 0...n-1 {
            if n % (i+1) == 0 {
                ans += nums[i]*nums[i]
            }
        }
        
        return ans
    }
}
