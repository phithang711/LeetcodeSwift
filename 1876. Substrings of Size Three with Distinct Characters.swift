class Solution {
    func countGoodSubstrings(_ s: String) -> Int {
        if s.count < 3 {
            return 0
        }
        
        var s = s.map {String($0)}
        
        var start = s[0]
        var second = s[1]
        var count = 0
        
        for i in 2..<s.count {
            let temp = s[i]
            if (temp != start) && (temp != second) && (start != second) {
                count += 1
            }
            
            start = second
            second = temp
        }
        
        return count
    }
}