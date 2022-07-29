class Solution {
    func findAndReplacePattern(_ words: [String], _ pattern: String) -> [String] {
        var normalizePatternString = self.normalizePattern(pattern)
        
        var result: [String] = []
        for word in words {
            if (word.count != pattern.count) {
                continue
            }
            
            if (self.normalizePattern(word) == normalizePatternString) {
                result.append(word)
            }
        }
        
        return result
    }
    
    func normalizePattern(_ pattern: String) -> String {
        var listSet : Set<Character> = Set()
        var listArr : [Character] = []
        
        var result = ""
        
        for char in pattern {
            if (listSet.contains(char)) {
                let index = listArr.firstIndex(of: char)
                result += String(index!)
            } else {
                listSet.insert(char)
                listArr.append(char)
                result += String(listArr.count - 1)
            }
        }
        
        return result
    }
}