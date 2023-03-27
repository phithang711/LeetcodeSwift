class Solution {
    func sortTheStudents(_ score: [[Int]], _ k: Int) -> [[Int]] {
        var score = score
        score.sort{$0[k] > $1[k]}
        
        return score
    }
}