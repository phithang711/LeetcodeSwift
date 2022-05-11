
class Trie {
    var dict : [String : Bool] = [:]
    var listWord : [String] = []

    init() {
        
    }
    
    func insert(_ word: String) {
        if (dict[word] == nil) {
            dict[word] = true
            listWord.append(word)
        }
    }
    
    func search(_ word: String) -> Bool {
        if (dict[word] == nil) {
            return false
        }
        
        return true
    }
    
    func startsWith(_ prefix: String) -> Bool {
        var filter = listWord.filter { $0.prefix(prefix.count) == prefix }
        if (filter.count > 0) {
            return true
        }
        
        return false
    }
}

/**
 * Your Trie object will be instantiated and called as such:
 * let obj = Trie()
 * obj.insert(word)
 * let ret_2: Bool = obj.search(word)
 * let ret_3: Bool = obj.startsWith(prefix)
 */