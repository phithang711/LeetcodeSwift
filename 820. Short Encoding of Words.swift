class Solution {
    // Trie
    class CheckNode {
        var dict = [Character: CheckNode]()
    }
    
    let root = CheckNode()
    
    func minimumLengthEncoding(_ words: [String]) -> Int {
        var words = words
        words.sort {$0.count > $1.count}
        words = words.map({String($0.reversed())})
        
        var result = 0
        var check = true
        
        for word in words {
            var current = root
            check = true
            for char in word {
                if current.dict[char] != nil {
                    current = current.dict[char]!
                } else {
                    current.dict[char] = CheckNode()
                    current = current.dict[char]!
                    check = false
                }
            }
            
            if (check == false) {
                result += word.count + 1
            }
        }
        
        return result
    }
}