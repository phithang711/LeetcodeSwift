class Solution {
    func findClosestNumber(_ nums: [Int]) -> Int {
        var closestNum = 1000000
        
        for num in nums {
            if abs(num) < abs(closestNum) {
                closestNum = num
            }
            
            if abs(num) == abs(closestNum) {
                if (closestNum < 0) && (num > 0) {
                    closestNum = num
                }
            }
        }
        
        return closestNum
    }
}