class Solution {
    func countHousePlacements(_ n: Int) -> Int {
        if n == 1 {
            return 4
        }
        
        let mod = 1000000007
        
        var count = 1
        var countTemp = 1
        for i in 2...n {
            var prev = count
            var prevCount = countTemp
            
            prev = prev % mod
            prevCount = prevCount % mod
            
            countTemp = prev + prevCount
            count = prevCount
        }
        
        var result = count + countTemp
        result = result % mod
        
        return (result * result) % mod
    }
}