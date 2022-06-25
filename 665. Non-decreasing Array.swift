class Solution {
    func checkPossibility(_ nums: [Int]) -> Bool {
        if nums.count == 1 {
            return true
        }
        
        var storeFirst = Int.min
        var storeSecond = Int.min
        
        var count = 0
        
        for i in 0..<nums.count {
            if nums[i] < storeFirst {
                if (count >= 1) {
                    return false
                }
                
                count += 1
                
                if nums[i] >= storeSecond {
                    storeFirst = nums[i]
                } 
                continue
            }
            
            storeSecond = storeFirst
            storeFirst = nums[i]
        }
        
        return true
    }
}
