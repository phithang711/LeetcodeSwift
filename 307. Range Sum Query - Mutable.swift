
class NumArray {
    var nums : [Int] = []
    var sumAll = 0
    init(_ nums: [Int]) {
        self.nums = nums
        
        sumAll = nums.reduce(0, +)
    }
    
    func update(_ index: Int, _ val: Int) {
        var diff = val - nums[index]
        nums[index] = val
        sumAll += diff
    }
    
    func sumRange(_ left: Int, _ right: Int) -> Int {
        var result = sumAll
        for i in 0..<left {
            result -= nums[i]
        }
        
        for i in right+1..<nums.count {
            result -= nums[i]
        }
        
        return result
    }
}

/**
 * Your NumArray object will be instantiated and called as such:
 * let obj = NumArray(nums)
 * obj.update(index, val)
 * let ret_2: Int = obj.sumRange(left, right)
 */