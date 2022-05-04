class Solution {
    func maxArea(_ height: [Int]) -> Int {
        // 2 pointer to find the zone
        var left = 0
        var right = height.count - 1
        var max = 0
        var temp = 0
        
        while (left < right) {
            temp = min(height[left], height[right]) * (right - left)
            if (max < temp) {
                max = temp
            }
            
            if (height[left] <= height[right]) {
                left += 1
            } else {
                right -= 1
            }
        }
        
        return max
    }
}