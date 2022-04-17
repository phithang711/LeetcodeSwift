class Solution {
    func digitSum(_ s: String, _ k: Int) -> String {
        if (s.count < k) {
            return s
        }
        
        var stringChar = s.map { String($0) }
        var temp = 0
        var value = 0
        var finalString = ""
        while stringChar.count > k {
            temp = -1
            finalString = ""
            for i in 0..<stringChar.count {
                value = Int(stringChar[i])!
                if (temp == -1) {
                    temp = value
                } else {
                    temp += value
                }
                
                if ((i + 1) % k == 0) {
                    if (temp != -1) {
                        finalString += String(temp)
                    }
                    
                    temp = -1
                }
            }
            
            if temp != -1 {
                finalString += String(temp)
            }
            
          
            stringChar = finalString.map { String($0) }
        }
        
        var result = ""
        for char in stringChar {
            result += String(char)
        }
      
        
        return result
    }
}