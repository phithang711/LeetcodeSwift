class Solution {
    func reverseOnlyLetters(_ s: String) -> String {
        var reversed : [String] = []
        
        for char in s {
            if char.isLetter() {
                reversed.append(String(char))
            }
        }
        
        var result = ""
        var start = reversed.count - 1
        
        for char in s {
            if char.isLetter() {
                result += reversed[start]
                start -= 1
                continue
            }
            
            result += String(char)
        }
        
        return result   
    } 
}

extension Character {
    func isLetter() -> Bool {
        if (!(self >= "a" && self <= "z") && !(self >= "A" && self <= "Z") ) {
            return false
        }
        return true
    }
}