class Solution {
    func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
        var firstArray : [Int] = []
        var lastArray : [Int] = []
        var nums2 = nums2
        var tempNums1:[Int] = []
         
        if (nums1.count == 0) {
            return [[], nums2]
        }
        
        for i in 0..<nums2.count {
            if lastArray.count == 0 {
                lastArray.append(nums2[i])
            } else if lastArray.firstIndex(of: nums2[i]) == nil {
                lastArray.append(nums2[i])
            }
        }
        
        
        for i in 0..<nums1.count {
            if tempNums1.count == 0 {
                tempNums1.append(nums1[i])
            } else if tempNums1.firstIndex(of: nums1[i]) == nil {
                tempNums1.append(nums1[i])
            }
        }
        
        var nums1 = tempNums1
         
        for i in 0..<nums1.count {
            let variable = lastArray.firstIndex(of: nums1[i]) ?? -1001
            if (variable != -1001) {
                while lastArray.firstIndex(of: nums1[i]) != nil {
                    let variable = lastArray.firstIndex(of: nums1[i]) ?? -1001
                        if (variable != -1001) {
                            lastArray.remove(at: variable)
                        }
                }
            } else {
                if firstArray.firstIndex(of: nums1[i]) == nil {
                    firstArray.append(nums1[i])
                }
            }
        }
        
        return [firstArray, lastArray]
    }
}