class Solution {
    func distanceTraveled(_ mainTank: Int, _ additionalTank: Int) -> Int {
        var usedFuel: Int = 0
        var haveFuel: Int = mainTank
        var extraFuel: Int = additionalTank
        
        while (haveFuel > 0) {
            var use = min(5, haveFuel)
            haveFuel -= use
            usedFuel += use
            
            if (use == 5 && extraFuel > 0) {
                haveFuel += 1
                extraFuel -= 1
            }
        }
        
        return usedFuel * 10
    }
}
