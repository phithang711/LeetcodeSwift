class Solution {
    func getPermutation(_ n: Int, _ k: Int) -> String {
        if (n == 1) {
            return "1"
        }
   
        var result = ""
        
        var n = n
        var k = k
        var numArr : [Int] = []
        
        // display all number in array
        for i in 1...n {
            numArr.append(i)
        }
        
        // find factorial of N
        var factorial = 1
        for i in 1...n {
            factorial *= i
        }
     
        while (numArr.count > 1) {
            // everytime you find the next index number make sure divide factorial to N
            factorial /= n
            n -= 1
            
            var atNumIndex = k / factorial
            k = k % factorial
            
            // if divisible then it's the final index
            if (k == 0) {
                atNumIndex -= 1
                k = factorial
            }
            
            // NumIndex = 0 means no need to change index
            if (atNumIndex != 0) {
                result += String(numArr[atNumIndex])
                numArr.remove(at: atNumIndex)
            } else {
                result += String(numArr[0])
                numArr.remove(at: 0)
            }
        }
        
        // plus the final number in numArr
        return result + String(numArr[0])
    }
}