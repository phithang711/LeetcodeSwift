class Solution {
    func candy(_ ratings: [Int]) -> Int {
        var leftArr = Array(repeating: 1, count: ratings.count)
        var rightArr = Array(repeating: 1, count: ratings.count)
        
        for i in 1..<ratings.count {
            if ratings[i] > ratings[i - 1] {
                leftArr[i] = leftArr[i - 1] + 1
            }
        }
        
        for i in stride(from: ratings.count - 2, to: -1, by: -1) {
            if ratings[i] > ratings[i + 1] {
                rightArr[i] = rightArr[i + 1] + 1
            }
        }
        
        var result = 0
        for i in 0..<ratings.count {
            result += max(leftArr[i], rightArr[i])
        }
        
        return result
    }
}