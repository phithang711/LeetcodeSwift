class Solution {
    func reverseWords(_ s: String) -> String {
        var finalResult = ""
        for word in s.components(separatedBy: " ") {
            finalResult += word.reversed() + " "
        }
        
        return String(finalResult.dropLast())
    }
}