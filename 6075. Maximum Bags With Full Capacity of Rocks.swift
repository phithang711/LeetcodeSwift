class Solution {
    func maximumBags(_ capacity: [Int], _ rocks: [Int], _ additionalRocks: Int) -> Int {
        var result : [Int] = Array(repeating: 0, count: capacity.count)
        
        for i in 0..<capacity.count {
            let temp = capacity[i] - rocks[i]
            if (temp > 0) {
                result[i] = temp
            }
        }
        
        result.sort { $0 < $1 }
        var additionalRocks = additionalRocks
        var count = 0
        for i in 0..<result.count {
            if (result[i] <= 0) {
                count += 1
            } else {
                additionalRocks -= result[i]
                
                if (additionalRocks >= 0) {
                    count += 1
                } else {
                    return count
                }
            }
        }
        
        return count
    }
}