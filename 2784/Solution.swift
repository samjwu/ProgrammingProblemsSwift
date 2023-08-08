class Solution {
    func isGood(_ nums: [Int]) -> Bool {
        var hi: Int = 1
        var freq: Dictionary<Int, Int> = [:]
        
        for num in nums {
            hi = max(hi, num)
            freq[num, default: 0] += 1
        }
        
        if hi == 1 {
            return freq[1] == 2
        }
        
        for i in 1...hi-1 {
            if freq[i] != 1 {
                return false
            }
        }
        
        return freq[hi] == 2
    }
}
