class Solution {
    func isHappy(_ n: Int) -> Bool {
        var n = n 
        while (n > 4) {
            var sum = 0
            var temp = n 
            while (temp > 0) {
                sum += (temp % 10) * (temp % 10)
                temp /= 10
            }
            n = sum
        }
        
        return n == 1 ? true : false
    }
}