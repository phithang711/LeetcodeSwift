class Solution {
    func divisorSubstrings(_ num: Int, _ k: Int) -> Int {
        var nums = num.digits()
        
        var temp = ""
        var count = 0
        
        for val in nums {
            temp += String(val)
            if (temp.count < k) {
                continue
            }
            
            if (temp.count == k) {
                let tempVal = Int(temp)!
                if (tempVal != 0) {
                    if (num % Int(temp)! == 0) {
                        count += 1
                    }
                }
                
                temp.removeFirst()
            }
        }
        
        return count
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