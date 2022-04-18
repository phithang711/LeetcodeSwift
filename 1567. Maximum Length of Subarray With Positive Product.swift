class Solution {
    func getMaxLen(_ nums: [Int]) -> Int {
        var nums = nums
        for i in 0..<nums.count {
            if (nums[i] < 0) {
                nums[i] = -1
            } else if (nums[i] > 0) {
                nums[i] = 1
            } 
        }
        
        var count = 0
        var temp = 0
        var product = 1
        
        for num in nums {
            if num == 0 {
                if (count < temp) && (product > 0) {
                    count = temp
                }
                
                temp = 0
                product = 1
                continue
            } 
            
            temp += 1
            
            if (product < 0) && (num < 0) {
                product = 1
                
                if (count < temp) {
                    count = temp
                }
                continue
            } 
            
            if (product > 0) {
                if (num < 0) {
                    product = -1
                    if (count < temp - 1) {
                        count = temp - 1
                    }
                    
                    continue
                }
                
                if (count < temp) {
                    count = temp
                }
            }   
        }
        
        temp = 0
        product = 1
        for i in stride(from: nums.count - 1, to: -1, by: -1) {
            if nums[i] == 0 {
                if (count < temp) && (product > 0) {
                    count = temp
                }
                
                temp = 0
                product = 1
                continue
            } 
            
            temp += 1
            
            if (product < 0) && (nums[i] < 0) {
                product = 1
                
                if (count < temp) {
                    count = temp
                }
                continue
            } 
            
            if (product > 0) {
                if (nums[i] < 0) {
                    product = -1
                    if (count < temp - 1) {
                        count = temp - 1
                    }
                    
                    continue
                }
                
                if (count < temp) {
                    count = temp
                }
            }   
        }
        
        if (count == 0) {
            for num in nums {
                if num > 0 {
                    return 1
                }
            }
        }
        
        return count
    }
}