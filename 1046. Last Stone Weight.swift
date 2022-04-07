class Solution {
    func lastStoneWeight(_ stones: [Int]) -> Int {
        var stones = stones
        stones.sort()
        
        while (stones.count > 1) {
            var final = stones[stones.count - 1] - stones[stones.count - 2]
            
            stones = stones.dropLast(2)
            
            if (final > 0) {
                stones.append(final)
                stones.sort()
            }
        }
        
        if (stones.count == 0) {
            return 0
        }

        return stones[0]
    }
}