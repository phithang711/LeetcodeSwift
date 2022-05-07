class Solution {
    func addStrings(_ num1: String, _ num2: String) -> String {
        var num1Arr = num1.map { String($0) }
        var num2Arr = num2.map { String($0) }
        
        num1Arr.reverse()
        num2Arr.reverse()
        
        var result = self.plusBigNum(num1Arr, num2Arr)
        
        result.reverse()
        
        return result.joined(separator: "")
    }
    
    func plusBigNum(_ num1: [String],_ num2: [String]) -> [String] {
        let minLen = num1.count < num2.count ? num1.count : num2.count
        var result : [String] = []
        
        var temp = 0
        var num = 0
        for i in 0..<minLen {
            num = Int(num1[i])! + Int(num2[i])! + temp
            
            result.append(String(num % 10))
            
            if (num > 9) {
                temp = num / 10
                num = num % 10
            } else {
                temp = 0
            }
        }
        
        if (num1.count > num2.count) {
            for i in minLen..<num1.count {
                num = Int(num1[i])! + temp
            
                result.append(String(num % 10))
            
                if (num > 9) {
                    temp = num / 10
                    num = num % 10
                } else {
                    temp = 0
                }
            }
        } else {
            for i in minLen..<num2.count {
                num = Int(num2[i])! + temp
            
                result.append(String(num % 10))
            
                if (num > 9) {
                    temp = num / 10
                    num = num % 10
                } else {
                    temp = 0
                }
            }
        }
        
        if (temp > 0) {
            result.append(String(temp))
        }
        
        return result
    }
}