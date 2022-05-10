class Solution {
    // code by asahi ocean. Temp for refactor again
    func combinationSum3(_ k: Int, _ n: Int) -> [[Int]] {
        var res = [[Int]](), path = [Int]()
        dfs(&res, &path, Array(1...9), n, 0, k)
        return res
    }
    
    private func dfs(_ out: inout [[Int]], _ p: inout [Int], _ c: [Int], _ t: Int, _ i: Int, _ s: Int) {
        if t == 0 && p.count == s { out.append(p) }
        for i in i..<c.count where p.count < s && c[i] <= t {
            p.append(c[i])
            dfs(&out, &p, c, t - c[i], i + 1, s)
            p.removeLast()
        }
    }
}