class Solution {
    func splitWordsBySeparator(_ words: [String], _ separator: Character) -> [String] {
        var ans: [String] = [String]()
        
        for word in words {
            var s = [Character]()
            
            for c in word {
                if c == separator {
                    if s.count > 0 {
                        ans.append(String(s))
                    }
                    
                    s.removeAll()
                } else {                
                    s.append(c)
                }
            }
            
            if s.count > 0 {
                ans.append(String(s))
            }
        }
        
        return ans
    }
}
