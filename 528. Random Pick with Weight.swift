class Solution {
    private var weight : [Int] = []
    private var percent: [Double] = []
    private var sum = 0
    
    init(_ w: [Int]) {
        self.weight = w
        self.sum = w.reduce(0, +)
        self.makePercent()
    }
    
    func makePercent() {
        for i in 0..<weight.count {
            if (i != 0) {
                percent.append(Double(weight[i]) / Double(sum) + percent[i - 1])
            } else {
                percent.append(Double(weight[i]) / Double(sum))
            }
        }
    }
    
    func pickIndex() -> Int {
        let random = Double.random(in: 0 ..< 1)
        for i in 0..<percent.count {
            if random < percent[i] {
                return i
            }
        }
        
        return 0
    }
}

/**
 * Your Solution object will be instantiated and called as such:
 * let obj = Solution(w)
 * let ret_1: Int = obj.pickIndex()
 */