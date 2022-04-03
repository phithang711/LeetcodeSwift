class Solution {
    func minBitFlips(_ start: Int, _ goal: Int) -> Int {
        var startBit = String(start, radix: 2)
        var goalBit = String(goal, radix: 2)
        
        var count = 0
        
        if startBit.count > goalBit.count {
            count += (startBit.count - goalBit.count)
            
            var temp = String(startBit.dropLast(startBit.count - count))
            startBit = String(startBit.dropFirst(count))
            
            for s in temp {
                if s == "0" {
                    count -= 1
                }
            }
            
            
        } else {
            count += (goalBit.count - startBit.count)
            
            var temp = String(goalBit.dropLast(goalBit.count - count))
            goalBit = String(goalBit.dropFirst(count))
            
            for s in temp {
                if s == "0" {
                    count -= 1
                }
            }
            
            
        }
        
          for i in 0..<goalBit.count {
            if startBit[i] != goalBit[i] {
                count += 1
            }
        }
        
        return count

    }
}

extension StringProtocol {
    subscript(_ offset: Int)                     -> Element     { self[index(startIndex, offsetBy: offset)] }
    subscript(_ range: Range<Int>)               -> SubSequence { prefix(range.lowerBound+range.count).suffix(range.count) }
    subscript(_ range: ClosedRange<Int>)         -> SubSequence { prefix(range.lowerBound+range.count).suffix(range.count) }
    subscript(_ range: PartialRangeThrough<Int>) -> SubSequence { prefix(range.upperBound.advanced(by: 1)) }
    subscript(_ range: PartialRangeUpTo<Int>)    -> SubSequence { prefix(range.upperBound) }
    subscript(_ range: PartialRangeFrom<Int>)    -> SubSequence { suffix(Swift.max(0, count-range.lowerBound)) }
}