class Solution {
    func countBeautifulPairs(_ nums: [Int]) -> Int {
        let n: Int = nums.count
        
        var ans: Int = 0
        
        for i in 0...n-2 {
            for j in i+1...n-1 {
                if (isBeautiful(num1: nums[i], num2: nums[j]) == true) {
                    ans += 1
                }
            }
        }
        
        return ans
    }
    
    func isBeautiful(num1: Int, num2: Int) -> Bool {
        var dig1: Int = num1
        while (dig1 >= 10) {
            dig1 /= 10
        }
        
        let dig2: Int = num2 % 10
        
        if (gcd(dig1, dig2) == 1) {
            return true
        }
        
        return false
    }
    
    func gcd(_ a: Int, _ b: Int) -> Int {
        if (b == 0) {
            return a
        }
        
        return gcd(b, a%b)
    }
}
