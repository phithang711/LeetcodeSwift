class Solution {
    func removeAnagrams(_ words: [String]) -> [String] {
        var words = words
        
        var result : [String] = []
        var i = 0
        
        while (i < words.count) {
            var temp = String(words[i].sorted())
            var j = i
            while (j < words.count) && (temp == String(words[j].sorted())) {
                j += 1
            }
            
            result.append(words[i])
            i = j
        }
        
        return result
    }
}