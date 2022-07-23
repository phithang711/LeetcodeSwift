class Solution {
    func countSmaller(_ nums: [Int]) -> [Int] {
        var sortArr = nums
        sortArr.sort{$0 < $1}
        
        var result : [Int] = []
        
        for num in nums {
            let index = self.binarySearchToFindIndex(sortArr, target:num)
            result.append(index)
            sortArr.remove(at: index)
        }
        
        return result
    }
    
    func binarySearchToFindIndex(_ nums: [Int], target: Int) -> Int {   
        if (nums.count == 1) {
            if target > nums[0] {
                return 1
            }
        }
        
        var left = 0
        var right = nums.count - 1
        
        while (left < right) {
            var mid = (right - left) / 2 + left
            
            if (nums[mid] == target) {
                while (mid >= 0) && (nums[mid] == target) {
                    mid -= 1
                }
                
                return mid + 1
            }
            
            if (nums[mid] < target) {
                left = mid + 1
            } else {
                right = mid
            }
        }
        
        if (nums[left] == target) {
            while (left >= 0) && (nums[left] == target) {
                left -= 1
            }
            
            return left + 1
        }
        
        if (nums[left] > target) {
            return left
        } else {
            return left + 1
        }
    }
}