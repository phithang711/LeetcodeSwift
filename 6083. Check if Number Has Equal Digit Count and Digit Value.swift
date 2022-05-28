class Solution {
    func digitCount(_ num: String) -> Bool {
        var nums = num.map {Int(String($0))}
        //nums.sort()
        
        var dict : [Int : Int] = [:]
        
        for val in nums {
            let temp = val!
            if dict[temp] == nil {
                dict[temp] = 1
            } else {
                dict[temp] = dict[temp]! + 1
            }
        }
        
        for i in 0..<nums.count {
            if dict[i] != nil {
                if nums[i] == 0 {
                    return false
                }
                
                if nums[i] != dict[i]! {
                    return false
                }
            }
            
            if dict[i] == nil {
                if nums[i] != 0 {
                    return false
                }
            }
        }
        
        return true
    }
}