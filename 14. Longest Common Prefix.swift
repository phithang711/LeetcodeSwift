class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.count <= 0 {
            return ""
        }
        
        var result = strs[0]
        
        for i in 1..<strs.count {
            if result == "" {
                return result
            }
            
            while (!strs[i].hasPrefix(result)) {
                result = String(result.dropLast())
            }
        }
        
        return result
    }
}