class Solution {
    func buyChoco(_ prices: [Int], _ money: Int) -> Int {
        var cheap1: Int = Int.max
        var cheap2: Int = Int.max
        
        for price in prices {
            if price < cheap1 {
                cheap2 = cheap1
                cheap1 = price
            } else if price < cheap2 {
                cheap2 = price
            }
        }
        
        if cheap1 + cheap2 > money {
            return money
        }
        return money - cheap1 - cheap2
    }
}
