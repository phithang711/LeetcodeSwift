class Solution {
    func hammingWeight(_ n: Int) -> Int {
        var count = 0
        
        let str = String(n, radix: 2)
        for s in str {
            if (s == "1") {
                count += 1
            }
        }
        
        return count
    }
}