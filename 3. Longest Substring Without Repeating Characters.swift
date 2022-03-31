class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var count = 0
        var tempCount = 0
        var previousChar = ""
        for char in s { 
            if (previousChar.contains(char)) {
                if (tempCount > count) {
                    count = tempCount
                } 
                
                let index = previousChar.firstIndex(of: char)
                let indexDrop = previousChar[...index!].count
                
                tempCount = previousChar.count - indexDrop + 1
                previousChar = String(previousChar.dropFirst(indexDrop))
            } else {
                tempCount += 1
            }
            
            previousChar.append(char)
        }
        
        
        return count < tempCount ? tempCount : count
    }
}