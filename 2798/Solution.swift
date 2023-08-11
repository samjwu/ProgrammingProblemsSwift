class Solution {
    func numberOfEmployeesWhoMetTarget(_ hours: [Int], _ target: Int) -> Int {
        var ans: Int = 0
        
        for h in hours {
            if h >= target {
                ans += 1
            }
        }
        
        return ans
    }
}
