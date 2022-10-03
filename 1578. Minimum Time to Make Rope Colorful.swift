class Solution {
    func minCost(_ colors: String, _ neededTime: [Int]) -> Int {
        var left = 0
        var sum = 0
        var maxVal = 0
        var result = 0

        var listColors = colors.map{$0}
        listColors.append("?")

        for right in 1..<listColors.count {
            sum += neededTime[right - 1]
            maxVal = max(maxVal, neededTime[right - 1])

            if listColors[left] != listColors[right] {
                left = right

                result += sum - maxVal
                sum = 0
                maxVal = 0
            }
        }

        return result
    }
}