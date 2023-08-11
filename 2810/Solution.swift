class Solution {
    func finalString(_ s: String) -> String {
        var chars: [Character] = []
        
        for c in s {
            if c != "i" {
                chars.append(c)
            } else {
                chars.reverse()
            }
        }
        
        return String(chars)
    }
}
