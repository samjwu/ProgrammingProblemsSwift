class Solution {
    func findNonMinOrMax(_ nums: [Int]) -> Int {
        let hi: Int = nums.max() ?? 100
        let lo: Int = nums.min() ?? 1
        
        for num in nums {
            if (num > lo && num < hi) {
                return num
            }
        }
        
        return -1
    }
}
