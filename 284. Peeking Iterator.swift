// Swift IndexingIterator refernence:
// https://developer.apple.com/documentation/swift/indexingiterator

class PeekingIterator {
    private var array : [Int] = []
    var index = 0
    init(_ arr: IndexingIterator<Array<Int>>) {
        for num in arr {
            self.array.append(num)
        }
    }
    
    func next() -> Int {
        index += 1
        return array[index - 1]
    }
    
    func peek() -> Int {
        return array[index]
    }
    
    func hasNext() -> Bool {
        if (index + 1 <= array.count) {
            return true
        } else {
            return false
        }
    }
}

/**
 * Your PeekingIterator object will be instantiated and called as such:
 * let obj = PeekingIterator(arr)
 * let ret_1: Int = obj.next()
 * let ret_2: Int = obj.peek()
 * let ret_3: Bool = obj.hasNext()
 */