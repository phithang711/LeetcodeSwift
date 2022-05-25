class Solution {
    func smallestRangeI(_ nums: [Int], _ k: Int) -> Int {
        let min = nums.min()
        let max = nums.max()
        
        let temp = max! - min!
        if (temp < 2 * k) {
            return 0
        } else {
            return temp - 2*k
        }
    }
}