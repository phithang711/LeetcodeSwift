class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        if numRows == 1 {
            return s
        }
        
        var s = s.map { String($0) }
        
        var sArr : [String] = Array(repeating: "", count: numRows)
        
        var count = 0
        while (count < s.count) {
            // down
            for i in 0..<numRows {
                if (i + count < s.count) {
                    sArr[i] += s[i + count]
                } else {
                    return sArr.joined(separator: "")
                }
            }
            
            count += numRows 
            
            // up
            for i in 0..<numRows - 2 {
                if (i + count < s.count) {
                    sArr[numRows - 2 - i] += s[i + count]
                } else {
                    return sArr.joined(separator: "")
                }
            }
            
            count += numRows - 2
        }
        
        return sArr.joined(separator: "")
    }
}