class Solution {
    func strongPasswordCheckerII(_ password: String) -> Bool {
        if password.count < 8 {
            return false
        }
        
        let password = password.map {String($0)}
        
        let special = "!@#$%^&*()-+"
        let digit = "0123456789"
        var checkUpper = false
        var checkLower = false
        var checkDigit = false
        var checkSpecial = false
        
        var temp = ""
        for i in 0..<password.count {
            let char = password[i]
            
            if i > 0 && password[i] == password[i-1] {
                return false
            }
            
            if digit.contains(char) {
                checkDigit = true
                continue
            }
            
            if special.contains(char) {
                checkSpecial = true
                continue
            }
            
            if char.isAlphanumeric() == false {
                continue
            }
            
            if char.uppercased() == char {
                checkUpper = true
            }
            
            if char.lowercased() == char {
                checkLower = true
            }
        }
        
        if (!checkUpper) {
            return false
        }
        
        if (!checkLower) {
            return false
        }
        
        if (!checkSpecial) {
            return false
        }
        
        if (!checkDigit) {
            return false
        }
        
        return true
    }
}

extension String {

    func isAlphanumeric() -> Bool {
        return self.rangeOfCharacter(from: CharacterSet.alphanumerics.inverted) == nil && self != ""
    }

}

