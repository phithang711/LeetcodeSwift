class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var result : [[Int]] = []
        var temp : [[Int]] = []
        
        for i in stride(from:nums.count - 1, to: -1, by: -1) {
            temp = result
            for j in 0..<temp.count {
                temp.append([nums[i]] + temp[j])
            }
            
            temp.append([nums[i]])
            result = temp
        }
        
        // if need to sorted
       /* result.sort { ($0.count, $0[0]) <
    ($1.count, $1[0]) }*/
        
        result.append([])
        
        return result
    }
}