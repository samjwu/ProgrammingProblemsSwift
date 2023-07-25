class Solution {
    func removeTrailingZeros(_ num: String) -> String {
        var ans: [Character] = Array(num)
        
        while ans[ans.count-1] == "0" {
            ans.removeLast()
        }
        
        return String(ans)
    }
}
