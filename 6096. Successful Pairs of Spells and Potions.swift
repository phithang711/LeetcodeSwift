class Solution {
    func successfulPairs(_ spells: [Int], _ potions: [Int], _ success: Int) -> [Int] {
        var potions = potions
        potions.sort{$0<$1}
        
        var result : [Int] = Array(repeating: 0, count: spells.count)
        
        for i in 0..<spells.count {
            var temp = success / spells[i]
            if temp * spells[i] != success {
                temp += 1
            }
            
            if potions[potions.count - 1] < temp {
                continue
            }
            
            let index = search(potions, temp)
            result[i] = index != -1 ? potions.count - index : 0
        }
        
        return result
    }
    
    func search(_ nums: [Int], _ target: Int) -> Int {
        if target == nums[0] {
            return 0
        }
        
        if (nums.count == 1) {
            if target > nums[0] {
                return -1
            }
        }
        
        var left = 0
        var right = nums.count - 1
        
        while (left < right) {
            var mid = (right - left) / 2 + left
            
            if (nums[mid] == target) {
                while mid > 0 && nums[mid] == target {
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
        
        if (nums[left] > target) {
            return left
        } else if nums[left] == target {
            while left > 0 && nums[left] == target {
                left -= 1
            }
            return left + 1
        } else {
            return left + 1
        }
    }
}