class Solution {
    func numberOfSteps(_ num: Int) -> Int {
        var count = 0
        var num = num
        while (num != 0) {
            if (num % 2 == 0) {
                num /= 2
            } else {
                num -= 1
            }
            
            count += 1
        }
        
        return count
    }
}