class Solution {
    func minimumNumbers(_ num: Int, _ k: Int) -> Int {
        if num == 0 {
            return 0
        }
        
        if k == 0 {
            if num % 10 != 0 {
                return -1
            } else {
                return 1
            }
        }

        if k % 2 == 0 {
            if num % 2 != 0 {
                return -1
            }
        }

        let unitDigit = num % 10
        
        var count = 1
        
        var check = k 
        while (num >= check) {
            if unitDigit == check % 10 {
                return count
            }
            
            if unitDigit != check % 10 {
                check += k
                count += 1
            }
        }
        
        return -1
    }
}