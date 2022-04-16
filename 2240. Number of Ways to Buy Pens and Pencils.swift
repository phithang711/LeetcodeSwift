class Solution {
    func waysToBuyPensPencils(_ total: Int, _ cost1: Int, _ cost2: Int) -> Int {
        var max = cost1 > cost2 ? cost1 : cost2
        var min = cost1 < cost2 ? cost1 : cost2
        
        var count = 0
        
        var index = total / max
        
        while index >= 0 {
            count += (total - index * max) / min + 1
            index -= 1
        }
        
        return count
    }
}