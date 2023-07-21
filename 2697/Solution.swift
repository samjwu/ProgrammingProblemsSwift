class Solution {
    func makeSmallestPalindrome(_ s: String) -> String {
        let n: Int = s.count
        var ans: [Character] = Array(s)
        
        for i in 0...n/2 {
            var small = min(ans[i], ans[n-1-i])
            ans[i] = small
            ans[n-1-i] = small
        }
        
        return String(ans)
    }
}
