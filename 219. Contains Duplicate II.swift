class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
       var dict : [Int:Int] = [:]

       for i in 0..<nums.count {
           if dict[nums[i]] == nil {
               dict[nums[i]] = i
               continue
           }

           let space = abs(dict[nums[i]]! - i)
           if space <= k {
               return true
           } else {
               dict[nums[i]] = i
           }
       } 
       return false
    }
}