
class RLEIterator {
    var result : [Int] = []
    var intArr : [Int] = []
    var nextIndex = 0

    init(_ encoding: [Int]) {
        var count = encoding.count
        if (count % 2 != 0) {
            count -= 1
        }
        
        var i = 0
        while (i < encoding.count) {
            intArr.append(encoding[i])
            result.append(encoding[i + 1])
            
            i += 2
        }
    }
    
    func next(_ n: Int) -> Int {
        if (nextIndex >= result.count) {
            return -1
        }
        
        var val = n
        while (val > 0) {
            val -= intArr[nextIndex]
            if val <= 0 {
                intArr[nextIndex] -= (intArr[nextIndex] + val)
            } else {
                nextIndex += 1
                
                if (nextIndex >= result.count) {
                    return -1
                }
            }
        }
        
        return result[nextIndex]
    }
}

/**
 * Your RLEIterator object will be instantiated and called as such:
 * let obj = RLEIterator(encoding)
 * let ret_1: Int = obj.next(n)
 */