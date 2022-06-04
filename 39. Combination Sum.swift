class Solution {
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var result : [[Int]] = []
        self.findTheSumArr([], candidates, 0, target, 0, &result)
        return result
    }
    
    // backtracking
    func findTheSumArr(_ sumArr: [Int],_ candidates: [Int], _ remaining: Int, _ target: Int,_ startValue: Int, _ result: inout [[Int]]) {
        if remaining > target {
            return
        }
        
        if remaining == target {
            result.append(sumArr)
            return
        }
        
        var sumArr = sumArr
        for i in startValue..<candidates.count {
            if (remaining + candidates[i] <= target) {
                sumArr.append(candidates[i])
                findTheSumArr(sumArr, candidates, remaining + candidates[i], target, i, &result)
                sumArr.removeLast()
            }
        }
    }
}