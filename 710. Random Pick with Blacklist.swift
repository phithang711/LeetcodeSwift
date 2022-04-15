class Solution {
    private var blacklist : [Int] = []
    private var n: Int = 0
    private var listIndex: [Int] = []

    init(_ n: Int, _ blacklist: [Int]) {
        self.n = n
        self.blacklist = blacklist
        self.blacklist.sort()
        
        // if blackList count to large
        if (self.blacklist.count >= 9 * n / 10) {
            var index = 0
            for i in 0..<n {
                if (index < self.blacklist.count) && (i == self.blacklist[index]) {
                    index += 1
                } else {
                    listIndex.append(i)
                }
            }
        }  
    }
    
    func pick() -> Int {
        // if blackList count to large
        if (self.blacklist.count >= 9 * n / 10) {
            var random = Int.random(in: 0 ..< listIndex.count)
   
            return listIndex[random]
        } else {
            var random = Int.random(in: 0 ..< n)
        
            while (blacklist.contains(random)) {
                random = Int.random(in: 0 ..< n)
            }
            
            return random
        }
    }
}

/**
 * Your Solution object will be instantiated and called as such:
 * let obj = Solution(n, blacklist)
 * let ret_1: Int = obj.pick()
 */