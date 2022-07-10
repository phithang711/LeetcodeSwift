class Solution {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        if cost.count == 1 {
            return cost[0]
        }
        
        if cost.count == 2 {
            return min(cost[0], cost[1])
        }
        
        var cost = cost
        cost.append(0)
        
        for i in 2..<cost.count {
            cost[i] += min(cost[i - 1], cost[i - 2])
        }
        
        return cost[cost.count - 1]
    }
}