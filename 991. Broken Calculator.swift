class Solution {
    func brokenCalc(_ startValue: Int, _ target: Int) -> Int {
        var count = 0
        var target = target
       
        while (target > startValue) {
            count += 1
            
            if (target + 1 == startValue) {
                break
            }
            
            if (target % 2 == 0) {
                target /= 2
            } else {
                target += 1
            }
        }
        
        return count + startValue - target
    }
}