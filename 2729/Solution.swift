class Solution {
    func isFascinating(_ n: Int) -> Bool {
        let n2: Int = n*2
        let n3: Int = n*3
        
        let nStr: String = String(n)
        let nStr2: String = String(n2)
        let nStr3: String = String(n3)
        
        let finalStr: String = nStr + nStr2 + nStr3
        
        var charSet: Set = Set<Character>()
        
        for c in finalStr {
            if (charSet.contains(c)) {
                return false
            }
            charSet.insert(c)
        }
        
        return charSet.count == 9 && charSet.contains("0") == false
    }
}
