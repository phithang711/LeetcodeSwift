class Solution {
    func greatestLetter(_ s: String) -> String {
        var s = s.map{String($0)}
        
        var dict : [String: Bool] = [:]
        var max = ""
        
        for char in s {
            let checkUppercased = char.uppercased() == char ? true : false
            
            if dict[char] == nil {
                dict[char] = true
            }
            
            if checkUppercased {
                 if dict[char.lowercased()] == nil {
                     continue
                 }
                
                 if max == "" || max < char {
                     max = char
                 }
            } else {
                if dict[char.uppercased()] == nil {
                     continue
                 }
                
                 if max == "" || max < char.uppercased() {
                     max = char.uppercased()
                 }
            }
        }
        
        return max
    }
}