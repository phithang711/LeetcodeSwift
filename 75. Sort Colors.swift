class Solution {
    func sortColors(_ nums: inout [Int]) {
        quickSort(&nums, 0, nums.count - 1 )
    }
    
    func quickSort(_ nums: inout [Int],_ left: Int,_ right: Int) {
        if (left >= right) {
            return
        }
        
        var pivot = nums[(right - left) / 2 + left]
        
        var i = left
        var j = right
        
        while (i <= j) {
            while (nums[i] < pivot) {
                i += 1
            } 
                
            while (nums[j] > pivot) {
                j -= 1
            } 
            
            if i <= j {
                let temp = nums[i]
                nums[i] = nums[j]
                nums[j] = temp
                
                i += 1
                j -= 1
            } 
        }
        
        if (left < j) {
            quickSort(&nums, left, j)
        }
        
        if (right > i) {
            quickSort(&nums, i, right)
        }
    }
}