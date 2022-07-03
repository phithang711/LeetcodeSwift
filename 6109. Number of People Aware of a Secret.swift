class Solution {
    func peopleAwareOfSecret(_ n: Int, _ delay: Int, _ forget: Int) -> Int {
        var listForgetArray = Array(repeating: 0, count: n)
        listForgetArray[0] = 1
        
        let mod = 1000000007
        
        for i in 0..<n {
            if listForgetArray[i] > 0 {
                if delay < forget {
                    for j in 0..<forget - delay {
                        if (i + j + delay >= n) {
                            continue
                        }
                        
                        listForgetArray[i + j + delay] = (listForgetArray[i + j + delay] + listForgetArray[i]) % mod
                    }
                }
            }
        }
        
        var countActiveUser = 0
        
        for i in stride(from: listForgetArray.count - 1, to: listForgetArray.count - 1 - forget, by: -1) {
            countActiveUser = (countActiveUser + listForgetArray[i]) % mod
        }
        
        return countActiveUser
    }
}