class Solution {
    func fib(_ n: Int) -> Int {
        if (n == 0) {
            return 0
        }
        
        if (n == 1 || n == 2) {
            return 1
        } 
        
        var index1 = 1
        var index2 = 1
        var fibo = 0
        for i in 3...n {
            fibo = index1 + index2
            index2 = index1
            index1 = fibo
        }
        
        return fibo
    }
}