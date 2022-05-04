class Solution {
    func findRepeatedDnaSequences(_ s: String) -> [String] {
        if (s.count < 10) {
            return []
        }
        
        var dict : [String : Bool] = [:]
        var result : [String] = []
        
        var sArr = s.map { String($0) } 

        var temp = sArr[0..<10].joined(separator: "")
        dict[temp] = true
        
        for i in 10..<sArr.count {
            temp = sArr[i - 9...i].joined(separator: "")
            
            if (dict[temp] == nil) {
                dict[temp] = true
                continue
            }
            
            if (dict[temp] == true) {
                result.append(temp)
                dict[temp] = false
            }
        }
        
        return result
    }
}