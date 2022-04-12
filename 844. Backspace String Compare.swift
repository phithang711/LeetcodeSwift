class Solution {
    func backspaceCompare(_ s: String, _ t: String) -> Bool {
        var first : [Character] = []
        var second: [Character] = []
        for char in s {
            if (char != "#") {
                first.append(char)
            } else {
                if (first.count != 0) {
                  first = first.dropLast()  
                }
            }
        }
        
        for char in t {
            if (char != "#") {
                second.append(char)
            } else {
                if (second.count != 0) {
                  second = second.dropLast()  
                }
            }
        }
        
        if (first.count != second.count) {
            return false
        }
        
        if (first == second) {
            return true
        } else {
            return false
        }
    }
}