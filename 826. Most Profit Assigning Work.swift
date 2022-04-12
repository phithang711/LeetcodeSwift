class Solution {
    func maxProfitAssignment(_ difficulty: [Int], _ profit: [Int], _ worker: [Int]) -> Int {
        var finalProfit = 0

        for work in worker {
            var maxProfit = 0
            for i in 0..<difficulty.count {
                if work >= difficulty[i] {
                    if maxProfit < profit[i] {
                        maxProfit = profit[i]
                    }
                }
            }
            
            finalProfit += maxProfit
        }
        
        return finalProfit
    }
}