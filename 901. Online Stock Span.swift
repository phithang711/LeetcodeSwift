
class StockSpanner {
    var result : [Int] = []
    var count: [Int] = []

    init() {
        
    }
    
    func next(_ price: Int) -> Int {
        defer {
            if (result.count == 0) {
                result.append(price)
                count.append(1)
            } 
            else if (result[result.count - 1] == price) {
                count[count.count - 1] += 1
            } else {
                result.append(price)
                count.append(1)
            }
        }
        
        if result.count == 0 {
            return 1
        }
        
        var nextCount = 1
        
        for i in stride(from: result.count - 1, to: -1, by: -1) {
            if (price >= result[i]) {
                nextCount += count[i]
            } else {
                break
            }
        }
        
        return nextCount
    }
}

/**
 * Your StockSpanner object will be instantiated and called as such:
 * let obj = StockSpanner()
 * let ret_1: Int = obj.next(price)
 */