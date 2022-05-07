
class Skiplist {
    private var dict : [Int: Int] = [:]

    init() {
        
    }
    
    func search(_ target: Int) -> Bool {
        if (dict[target] == nil) {
            return false
        }
        
        let val = dict[target]!
        
        if (val >= 1) {
            return true
        } else {
            return false
        }
    }
    
    func add(_ num: Int) {
        if (dict[num] == nil) {
            dict[num] = 1
            return
        } 
        
        let val = dict[num]
        dict[num] = val! + 1
    }
    
    func erase(_ num: Int) -> Bool {
        if (dict[num] == nil) {
            return false
        } 
        
        let val = dict[num]!
        
        if (val > 0) {
            dict[num] = val - 1
            return true
        } else {
            return false
        }
    }
}

/**
 * Your Skiplist object will be instantiated and called as such:
 * let obj = Skiplist()
 * let ret_1: Bool = obj.search(target)
 * obj.add(num)
 * let ret_3: Bool = obj.erase(num)
 */