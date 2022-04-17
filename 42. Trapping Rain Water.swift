class Solution {
    func trap(_ height: [Int]) -> Int {
        if (height.count == 0) || (height.count == 1) {
            return 0
        }
        
        var left : [Int] = Array(repeating: 0, count: height.count)
        var right : [Int] = Array(repeating: 0, count: height.count)
        
        left[0] = height[0]
        
        for i in 1..<height.count {
            left[i] = max(height[i], left[i - 1])
        }
        
        right[height.count - 1] = height[height.count - 1]
        
        for i in stride(from: height.count - 2, to: -1, by: -1) {
            right[i] = max(height[i], right[i + 1])
        }
        
        var count = 0
        
        for i in 1..<height.count - 1 {  
            count += min(left[i], right[i]) - height[i]
        }
        
        return count
    }
}