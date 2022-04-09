class Solution {
    func increasingTriplet(_ nums: [Int]) -> Bool {
       var triple : [Int] = []
        
        for i in 0..<nums.count {
            if (triple.count == 0) {
                triple.append(nums[i])
                continue
            }
            
            if (triple.count == 1) {
                if (nums[i] > triple[0]) {
                    triple.append(nums[i])
                } 
                
                if nums[i] < triple[0] {
                    triple[0] = nums[i]
                }
                
                continue
             }
            
            if (triple.count == 2) {
                if (nums[i] > triple[1]) {
                    return true
                }
                
                if (nums[i] < triple[1]) {
                    var j = i + 1
                  
                    while (j < nums.count) && (nums[i] == nums[j] ) {
                        j += 1
                    }
                    
                    if (j < nums.count) && (triple[1] < nums[j]) {
                        return true
                    }
                    
                    if (nums[i] < triple[0]) {
                        triple = triple.dropLast()
                        triple[0] = nums[i]
                        continue
                    }
                    
                    if (nums[i] < triple[1]) && (nums[i] > triple[0]) {
                        triple[1] = nums[i]
                        continue
                    }
                }
            }
        }
        
        return false
    }
}