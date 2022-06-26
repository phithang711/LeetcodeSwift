class Solution {
    func maxScore(_ cardPoints: [Int], _ k: Int) -> Int {
        if k <= 0 {
            return 0
        }
        
        var leftCard = Array(repeating: 0, count: k)
        var rightCard = Array(repeating: 0, count: k)
        
        leftCard[0] = cardPoints[0]
        rightCard[0] = cardPoints[cardPoints.count - 1]
        
        for i in 1..<k {
            leftCard[i] = cardPoints[i] + leftCard[i - 1]
            rightCard[i] = cardPoints[cardPoints.count - i - 1] + rightCard[i - 1]
        }
        
        var result = Int.min
        
        for i in 1...k {
            if k == i {
                result = max(result, leftCard[i - 1], rightCard[i - 1])
                continue
            }
            result = max(result, leftCard[i - 1] + rightCard[k - i - 1], rightCard[i - 1] + leftCard[k - i - 1])
        }
        
        
        return result
    }
}