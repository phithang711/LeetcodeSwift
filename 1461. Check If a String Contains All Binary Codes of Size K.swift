class Solution {
    func hasAllCodes(_ s: String, _ k: Int) -> Bool {
        if (s.count < k) {
            return false
        }
 
        var listResult : [String] = []
        var result = ""
        
        for char in s {            
            result += String(char)
            if (result.count == k) {
                listResult.append(result)
                result = String(result.dropFirst())
            }
        }
        
        listResult = Array(Set(listResult))
        
        if listResult.count != Int(pow(2.0, Double(k))) {
            return false
        }
        
        return true
    }
}