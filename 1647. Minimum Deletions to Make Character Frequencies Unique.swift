class Solution {
    func minDeletions(_ s: String) -> Int {
        var dict : [Character : Int] = [:]
        for char in s {
            dict[char, default: 0] += 1
        }
        
        var listArr : [Int] = []
        
        var result = 0
        
        for key in dict.keys {
            if !listArr.contains(dict[key]!) {
                listArr.append(dict[key]!)
                continue
            }
            
            var val = dict[key]!
            while (val > 0) && (listArr.contains(val)) {
                val -= 1
                result += 1
            }
            
            if (val > 0) {
                listArr.append(val)
            }
        }
        
        return result
    }
}