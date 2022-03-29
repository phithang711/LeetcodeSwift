class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var left = 0
        var right = numbers.count - 1
        
        while (left < right) {
            let sum = numbers[right] + numbers[left]
            
            if (sum == target) {
                return [left + 1, right + 1]
            }
            
            if (sum > target) {
                right -= 1
            } else {
                left += 1
            }
        }
        
        if (numbers[right] + numbers[left] == target) {
            return [left + 1, right + 1]
        } else {
            return [-1, -1]
        }
    }
}