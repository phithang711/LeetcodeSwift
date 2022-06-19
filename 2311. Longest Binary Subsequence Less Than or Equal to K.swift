class Solution {
    func longestSubsequence(_ s: String, _ k: Int) -> Int {
        var result = ""
        
        let s = s.map{String($0)}
        
        for i in stride(from: s.count - 1, to: -1, by: -1) {
            guard let wrap = Int(s[i] + result, radix: 2) else { continue }
            if wrap <= k {
                result = s[i] + result
            } else {
                if s[i] == "0" {
                    result = s[i] + result
                }
            }
        }
        
        return result.count
    }
}