class Solution {
    func maxScore(_ nums: [Int]) -> Int {
        var result = 0
        
        var sum = 0
        var minArr : [Int] = []
        
        for num in nums {
            if num > 0 {
                sum += num
                result += 1
                continue
            }
            
            minArr.append(num)
        }
        
        minArr.sort {$0 > $1}
        
        for num in minArr {
            sum += num
            if sum > 0 {
                result += 1
            }
        }
        
        return result
    }
}