class Solution {
    func multiply(_ num1: String, _ num2: String) -> String {
        if num1 == "0" || num2 == "0" {
            return "0"
        }
        
        if num2 == "1" {
            return num1
        }
        
        if num1 == "1" {
            return num2
        }
        
        var num1Arr = num1.map { String($0) }
        var num2Arr = num2.map { String($0) }
        
        num1Arr.reverse()
        num2Arr.reverse()
        
        var result : [String] = []
        
        var tempResult : [String] = []
        var temp = 0
        var num = 0
        
        for i in 0..<num2Arr.count {
            tempResult = []
            temp = 0
            if i > 0 {
                for j in 0..<i {
                    tempResult.append("0")
                }
            }
            
            for j in 0..<num1Arr.count {
                num = Int(num2Arr[i])! * Int(num1Arr[j])! + temp
                
                tempResult.append(String(num % 10))
            
                if (num > 9) {
                    temp = num / 10
                    num = num % 10
                } else {
                    temp = 0
                }
            }
            
            if (temp > 0) {
                tempResult.append(String(temp))
            }
            
            result = plusBigNum(result, tempResult)
        }

        var finalResult = ""
        for i in stride(from: result.count - 1, to: -1, by: -1) {
            finalResult += String(result[i])
        }
        
        return finalResult
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