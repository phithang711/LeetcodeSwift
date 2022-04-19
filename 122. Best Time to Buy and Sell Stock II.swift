class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var profit = 0
        var val = 0
        
        for i in 1..<prices.count {
            // Because can buy and sell in same day so we can do sell first then buy again
            val = prices[i] - prices[i - 1]
            
            if (val > 0) {
                profit += val
            }
        }
        
        return profit
    }
}