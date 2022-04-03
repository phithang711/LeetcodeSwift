class Solution {
    func numberOfWays(_ s: String) -> Int {
        var arr : [Int] = Array(repeating: 0, count: 6)
        // 0 : "0" ; 1: "1"; 2: "01"; 3: "10"; 4: "101"; 5: "010"
        for char in s {  
            if char == "0" {
                arr[0] += 1
                arr[3] += arr[1]
                arr[5] += arr[2]
            } else {
                arr[1] += 1
                arr[2] += arr[0]
                arr[4] += arr[3]
            }
        }
        
        return arr[4] + arr[5]
    }
}

extension StringProtocol {
    subscript(_ offset: Int)                     -> Element     { self[index(startIndex, offsetBy: offset)] }
    subscript(_ range: Range<Int>)               -> SubSequence { prefix(range.lowerBound+range.count).suffix(range.count) }
    subscript(_ range: ClosedRange<Int>)         -> SubSequence { prefix(range.lowerBound+range.count).suffix(range.count) }
    subscript(_ range: PartialRangeThrough<Int>) -> SubSequence { prefix(range.upperBound.advanced(by: 1)) }
    subscript(_ range: PartialRangeUpTo<Int>)    -> SubSequence { prefix(range.upperBound) }
    subscript(_ range: PartialRangeFrom<Int>)    -> SubSequence { suffix(Swift.max(0, count-range.lowerBound)) }
    func distance(of element: Element) -> Int? { firstIndex(of: element)?.distance(in: self) }
    func distance<S: StringProtocol>(of string: S) -> Int? { range(of: string)?.lowerBound.distance(in: self) }
}

extension Collection {
    func distance(to index: Index) -> Int { distance(from: startIndex, to: index) }
}
extension String.Index {
    func distance<S: StringProtocol>(in string: S) -> Int { string.distance(to: self) }
}