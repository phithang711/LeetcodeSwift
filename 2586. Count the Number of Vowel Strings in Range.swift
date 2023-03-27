class Solution {
    func vowelStrings(_ words: [String], _ left: Int, _ right: Int) -> Int {
        let vowels = ["a", "e", "i", "u", "o"]
        
        var result = 0
        
        var firstIndex = ""
        var lastIndex = ""
        
        for i in left...right {
            firstIndex = String(words[i].prefix(1))
            lastIndex = String(words[i].suffix(1))
            
            if vowels.contains(firstIndex) && vowels.contains(lastIndex) {
                result += 1
            }
        }
        
        return result
    }
}