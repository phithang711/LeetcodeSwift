class Solution {
    func lengthOfLIS(_ nums: [Int]) -> Int {
        var stack = [Int]()
        
        var left = 0
        var right = 0

		for num in nums {
			if stack.isEmpty {
				stack.append(num)
			} else if num > stack.last! {
				stack.append(num)
			} else {
				left = 0
				right = stack.count - 1
				while left <= right {
					let mid = (left + right) / 2
					let midVal = stack[mid]
					if num <= midVal {
						right = mid - 1
					} else {
						left = mid + 1
					}
				}
				stack[left] = num
			}
		}

		return stack.count
    }
}