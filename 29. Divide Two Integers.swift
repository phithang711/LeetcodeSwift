class Solution {
    func divide(_ dividend: Int, _ divisor: Int) -> Int {
        var result = dividend / divisor
        
        var max = Int(pow(2.0, 31.0))
        
        if result > max - 1 {
            return max - 1
        }
        
        if result < -max {
            return -max
        }
        
        return result
    }
}