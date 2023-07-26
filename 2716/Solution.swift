class Solution {
    func minimizedStringLength(_ s: String) -> Int {
        var charSet: Set = Set<Character>()
        
        for c in s {
            charSet.insert(c)
        }
        
        return charSet.count
    }
}
