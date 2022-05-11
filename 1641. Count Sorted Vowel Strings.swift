class Solution {
    func countVowelStrings(_ n: Int) -> Int {
        if n <= 0 {
            return 0
        }
        
        // ["a","e","i","o","u"]
        var countA = 1
        var countE = 1
        var countI = 1
        var countO = 1
        var countU = 1
        
        for i in 1..<n {
            countA += countE + countI + countO + countU
            countE += countI + countO + countU
            countI += countO + countU
            countO += countU
        }
        
        return countA + countE + countI + countO + countU
    }
}