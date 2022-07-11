class Solution {
    func fillCups(_ amount: [Int]) -> Int {
        var amount = amount
        amount.sort {$0 < $1}
        
        let sum = amount[0] + amount[1]
        
        if sum <= amount[2] {
            return amount[2]
        }
        
        var minus = sum - amount[2]
        minus = minus % 2 > 0 ? minus + 1 : minus
        
        return amount[2] + minus / 2
    }
}