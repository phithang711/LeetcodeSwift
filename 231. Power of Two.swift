class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        if (n == 1) {
            return true
        }
        
        if (n % 2 != 0) {
            return false
        }
        
        var n = n
        
        while (n % 2 == 0) && (n > 1) {
            n /= 2
            if (n == 1) {
                return true
            }
        }
        
        return false
    }
}

// next solution

class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        var bit1Count = 0
        var n = n
        while n > 0 {
            bit1Count += n & 1
            n = n >> 1
        }
        return bit1Count == 1
    }
}