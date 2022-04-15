class Solution {
    func findJudge(_ n: Int, _ trust: [[Int]]) -> Int {
        if (trust.count == n) {
            return -1
        }
        
        var listTrustIndex = Array(repeating: 0, count: n)
        var listCheckTrustIndex = Array(repeating: false, count: n)
        
        for trustPeople in trust {
            listTrustIndex[trustPeople[1] - 1] += 1
            
            if !listCheckTrustIndex[trustPeople[0] - 1] {
                listCheckTrustIndex[trustPeople[0] - 1] = true
            }
        }
        
        for i in 0..<listTrustIndex.count {
            if listTrustIndex[i] == n - 1 && listCheckTrustIndex[i] == false {
                return i + 1
            }
        }
        
        return -1
    }
}