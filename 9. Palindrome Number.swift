class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if (x<0) {
            return false
        }

        return String(x) == String(String(x).reversed())
    }
}