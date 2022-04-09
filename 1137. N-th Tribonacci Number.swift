class Solution {
    func tribonacci(_ n: Int) -> Int {
        if (n == 0) {
            return 0
        }
        
        if (n == 1 || n == 2) {
            return 1
        } 
        
        if (n == 3) {
            return 2
        }
        
        var index1 = 2
        var index2 = 1
        var index3 = 1
        var tribo = 0
        for i in 4...n {
            tribo = index1 + index2 + index3
            index3 = index2
            index2 = index1
            index1 = tribo
        }
        
        return tribo
    }
}