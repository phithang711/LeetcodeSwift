class Solution {
    func largestInteger(_ num: Int) -> Int {
        var evenDigits: [Int] = []
        var oddDigits: [Int] = []
        
        var temp = num
        
        var val = temp % 10
        
        if (val % 2 == 0) {
            evenDigits.append(val)
        } else {
            oddDigits.append(val)
        }
        
        while temp >= 10 {
            temp = temp / 10
            var val = temp % 10
        
            if (val % 2 == 0) {
                evenDigits.append(val)
            } else {
                oddDigits.append(val)
            }
        }
        
        evenDigits.sort()
        oddDigits.sort()
        
        var result = 0
        
        let arr = num.digits()
        
        for value in arr {
            if (value % 2 == 0) {
                result = result * 10 + evenDigits[evenDigits.count - 1]
                evenDigits = evenDigits.dropLast()
            } else {
                result = result * 10 + oddDigits[oddDigits.count - 1]
                oddDigits = oddDigits.dropLast()
            }
        }
        
        
        return result
    }
    
}

extension Int {
    func digits() -> [Int] {
        var digits: [Int] = []
        var num = self
        
        digits.append(num % 10)
        
        while num >= 10  {
            num = num / 10
            digits.append(num % 10)
        }
        
        return digits.reversed()
    }
}