class NumArray {
    var sumArr : [Int] = []
    init(_ nums: [Int]) {
        sumArr = Array(repeating: 0, count: nums.count)
        sumArr[0] = nums[0]
        for i in 1..<nums.count {
            sumArr[i] = nums[i] + sumArr[i - 1]
        }
    }
    
    func sumRange(_ left: Int, _ right: Int) -> Int {
        if (left == 0) {
            return sumArr[right]
        } else {
            return sumArr[right] - sumArr[left - 1]
        }
    }
}

/**
 * Your NumArray object will be instantiated and called as such:
 * let obj = NumArray(nums)
 * let ret_1: Int = obj.sumRange(left, right)
 */