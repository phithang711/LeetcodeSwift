
class Solution {
    var defaultNums : [Int] = []
    var temp : [Int] = []
    var countShuffle = 2

    init(_ nums: [Int]) {
        defaultNums = nums
        temp = defaultNums
    }
    
    func reset() -> [Int] {
        temp = defaultNums
        return defaultNums
    }
    
    func shuffle() -> [Int] {
        var end = 0
        var tempVal = 0
        
        for start in 0..<temp.count {
            end = Int.random(in: 0..<temp.count)
            
            tempVal = temp[end]
            temp[end] = temp[start]
            temp[start] = tempVal
        }
        
        return temp
    }
}

/**
 * Your Solution object will be instantiated and called as such:
 * let obj = Solution(nums)
 * let ret_1: [Int] = obj.reset()
 * let ret_2: [Int] = obj.shuffle()
 */