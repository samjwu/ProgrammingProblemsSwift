class Solution {
    func semiOrderedPermutation(_ nums: [Int]) -> Int {
        let n = nums.count
        var firstIdx = -1
        var lastIdx = -1
        
        for i in 0...n-1 {
            if (nums[i] == 1) {
                firstIdx = i
            }
            if (nums[i] == n) {
                lastIdx = i
            }
        }
        
        // number of swaps to move first to 0
        var swapX = firstIdx
        // number of swaps to move last to n-1
        var swapY = n-1 - lastIdx
        
        var totalSwaps = swapX + swapY
        
        // if first and last cross over,
        // remove one swap to avoid counting twice
        if (firstIdx > lastIdx) {
            totalSwaps -= 1
        }
        
        return totalSwaps
    }
}
