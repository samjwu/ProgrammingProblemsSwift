class Solution {
    func minLength(_ s: String) -> Int {
        // equivalent: var stack = [Character]()
        var stack: [Character] = [] 
        
        for c in s {
            if stack.isEmpty {
                stack.append(c)
                continue
            }
            
            let prev = stack.last
                
            if (prev == "A" && c == "B") || (prev == "C" && c == "D") {
                stack.removeLast()
            } else {
                stack.append(c)
            }
        }
        
        return stack.count
    }
}
