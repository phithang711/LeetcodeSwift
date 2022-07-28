class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        return s.sorted(by: {$0 < $1}) == t.sorted(by: {$0 < $1})
    }
}