
class MyHashSet {
    private var hashSet : [Int] = []
    init() {
        
    }
    
    func add(_ key: Int) {
        if !self.contains(key) {
            hashSet.append(key)
        }
    }
    
    func remove(_ key: Int) {
        if (self.contains(key)) {
            let index = hashSet.firstIndex(of: key)
            hashSet.remove(at: index!)
        }
    }
    
    func contains(_ key: Int) -> Bool {
        return hashSet.contains(key)
    }
}

/**
 * Your MyHashSet object will be instantiated and called as such:
 * let obj = MyHashSet()
 * obj.add(key)
 * obj.remove(key)
 * let ret_3: Bool = obj.contains(key)
 */