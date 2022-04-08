class KthLargest {

    private var nums : [Int] = []
    private var k = 0
    init(_ k: Int, _ nums: [Int]) {
        self.k = k
        self.nums = nums
        self.nums.sort()
    }
    
    func add(_ val: Int) -> Int {
        nums.append(val)
        
        nums.sort()
        
        return nums[nums.count - k]
    }
}

/**
 * Your KthLargest object will be instantiated and called as such:
 * let obj = KthLargest(k, nums)
 * let ret_1: Int = obj.add(val)
 */