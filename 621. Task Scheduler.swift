class Solution {
    func leastInterval(_ tasks: [Character], _ n: Int) -> Int {
        var dict : [Character: Int] = [:]
        var maxCount = 0
        
        for task in tasks {
            if dict[task] == nil {
                dict[task] = 1
            } else {
                dict[task] = dict[task]! + 1
            }
            
            if maxCount < dict[task]! {
                maxCount = dict[task]!
            }
        }
        
        var countMaxValue = 0
        for value in dict.values {
            if value == maxCount {
                countMaxValue += 1
            }
        }
        
        return max(countMaxValue + (maxCount - 1) * (n + 1), tasks.count)
    }
}