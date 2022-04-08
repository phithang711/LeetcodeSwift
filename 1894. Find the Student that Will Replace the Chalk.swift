class Solution {
    func chalkReplacer(_ chalk: [Int], _ k: Int) -> Int {
        let sumChalk = chalk.reduce(0, +)
        var k = k % sumChalk
        for i in 0..<chalk.count {
            if k < chalk[i] {
                return i
            } else {
                k -= chalk[i]
            }
        }
        
        return chalk.count - 1
    }
}