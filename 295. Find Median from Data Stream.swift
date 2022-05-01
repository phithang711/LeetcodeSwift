
class MedianFinder {
    var arr : [Int] = []
    init() {
        
    }
    
    func addNum(_ num: Int) {
        arr.append(num)
    }
    
    func findMedian() -> Double {
        arr.sort()
        if arr.count % 2 != 0 {
            return Double(arr[arr.count / 2])
        } else {
            return Double(arr[arr.count / 2] + arr[arr.count / 2 - 1]) / 2.0
        }
    }
}

/**
 * Your MedianFinder object will be instantiated and called as such:
 * let obj = MedianFinder()
 * obj.addNum(num)
 * let ret_2: Double = obj.findMedian()
 */