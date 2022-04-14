class Solution {
    func minRemoveToMakeValid(_ s: String) -> String {
        var result = ""
        var count = 0
        var couple = 0
        
        for char in s {
            if char == ")" {
                if (count > 0) {
                    count -= 1
                    couple += 1
                }
                
                continue
            }
            
            if char == "(" {
                count += 1
                continue
            }
        }
        
        count = couple
        
        for char in s {
            if char == ")" {
                if couple > 0 && couple > count {
                    couple -= 1
                    result += ")"
                }
                
                continue
            }
            
            if char == "(" {
                if count > 0 {
                    count -= 1
                    result += "("
                }
                
                continue
            }
            
            result += String(char)
        }
        
        return result
    }
}