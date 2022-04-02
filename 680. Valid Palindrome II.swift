class Solution {
    func validPalindrome(_ s: String) -> Bool {
        return check(Array(s),
                     startIndex: 0,
                     endIndex: s.count - 1,
                     canDelete: true)
    }
    
    func check(_ sArray: [String.Element], 
                      startIndex: Int, 
                      endIndex: Int, 
                      canDelete: Bool = false) -> Bool {
        
        var startIndex = startIndex
        var endIndex = endIndex
        
        while (startIndex <= endIndex) {
            if sArray[startIndex] != sArray[endIndex] {
                if canDelete {
                    return check(sArray, startIndex: startIndex + 1, endIndex: endIndex) 
                    || check(sArray, startIndex: startIndex, endIndex: endIndex - 1)
                } else {
                    return false    
                }
            } else {
                startIndex += 1
                endIndex -= 1
            }
        }
        
        return true
    }
}