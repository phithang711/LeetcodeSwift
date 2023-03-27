class Solution {
    func splitNum(_ num: Int) -> Int {
        var splitNum : [Int] = []
        
        var num = num
        var att = 0
        while num > 0 {
            att = num % 10
            num /= 10
            splitNum.append(att)
        }
        
        splitNum.sort {$0 < $1}
        
        if splitNum.count == 1 {
            return splitNum[0]
        }
        
        var num1 = splitNum[0]
        var num2 = splitNum[1]
        
        var addFirst = true
        for i in 2..<splitNum.count {
            if addFirst {
                num1 = num1 * 10 + splitNum[i]
            } else {
                num2 = num2 * 10 + splitNum[i]
            }
            
            addFirst = !addFirst
        }
        
        return num1 + num2
    }
}