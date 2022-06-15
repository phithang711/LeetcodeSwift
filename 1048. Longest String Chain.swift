class Solution {
    func longestStrChain(_ words: [String]) -> Int {
        if words.count < 1 {
            return 0
        }
        
        var dict : [String:Int] = [:]
        
        var words = words
        words.sort {$0.count < $1.count}
        
        var result = 1
        
        for word in words {
            dict[word] = 1
            
            var arr = Array(word)
            for i in 0..<word.count {
                var check = Array(word)
                check.remove(at: i)
                
                if dict[String(check)] != nil && dict[String(check)]! + 1 > dict[word]! {
                    dict[word] = dict[String(check)]! + 1
                    result = max(result, dict[word]!)
                }                
            }
        }
        
        return result
    }
}