class Solution {
    func maximumNumberOfStringPairs(_ words: [String]) -> Int {
        var wordDict: Dictionary<String, Int> = [:]
        // alternative
        // var wordDict = [String: Int]()
        
        for word in words {
            wordDict[word, default: 0] += 1
        }
        
        var numPairs: Int = 0
        
        for word in words {
            var rev = String(word.reversed())
            
            if (word == rev) {
                if (wordDict[word] != nil && wordDict[rev]! > 1) {
                    wordDict[word]! -= 2

                    numPairs += 1
                }
            } else {
                if (wordDict[rev] != nil && wordDict[rev]! > 0) {
                    wordDict[word]! -= 1
                    wordDict[rev]! -= 1

                    numPairs += 1
                }
            }            
        }
        
        return numPairs
    }
}
