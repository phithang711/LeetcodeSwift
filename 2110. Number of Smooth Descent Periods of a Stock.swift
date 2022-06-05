class Solution {
    func getDescentPeriods(_ prices: [Int]) -> Int {
        if prices.count == 1 {
            return 1
        }
        
        var countArr = Array(repeating: 1, count: prices.count)
        
        for i in 1..<prices.count {
            if prices[i-1] - prices[i] == 1 {
                countArr[i] += countArr[i - 1]
            }
        }
        
        return countArr.reduce(0, +)
    }
}