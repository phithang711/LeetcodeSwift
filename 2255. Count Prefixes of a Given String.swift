class Solution {
    func countPrefixes(_ words: [String], _ s: String) -> Int {
        var count = 0
        for word in words {
            if s.prefix(word.count) == word {
                count += 1
            }
        }
        
        return count
    }
}