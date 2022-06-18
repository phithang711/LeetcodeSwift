class WordFilter {
    class CheckNode {
        var dict = [Character: CheckNode]()
        var index = -1
    }
    
    let root = CheckNode()

    init(_ words: [String]) {
        self.buildTree(words)   
    }
    
    func f(_ prefix: String, _ suffix: String) -> Int {
        let target = suffix + "#" + prefix
        
        var current = root
        for char in target {
            if current.dict[char] == nil {
                return -1
            }
            
            current = current.dict[char]!
        }
        
        return current.index
    }
    
    func buildTree(_ words: [String]) {
        for (index, word) in words.enumerated() {
            let wordArr = Array(word)
            for i in 0..<wordArr.count {
                let suffix = String(wordArr[i..<wordArr.count])
                let target = suffix + "#" + word
                
                var cur = root
                cur.index = index
                
                for c in target {
                    if cur.dict[c] == nil {
                        cur.dict[c] = CheckNode()
                    }
                    cur = cur.dict[c]!
                    cur.index = index
                }
            }
        }
    }
}

/**
 * Your WordFilter object will be instantiated and called as such:
 * let obj = WordFilter(words)
 * let ret_1: Int = obj.f(prefix, suffix)
 */