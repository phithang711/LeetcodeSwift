class Solution {
    func longestPalindrome(_ s: String) -> String {
        if s.count == 1 {
            return s
        }
        
        if s.count == 2 {
            if s == String(s.reversed()) {
                return s
            } else {
                return String(Array(s)[0])
            }
        }
        
        var result = ""
        
        let word = Array(s)
        
        for i in 0..<word.count - 1 {
            var left = i - 1
            var right = i + 1
            while (left > -1) && (right < word.count) && (word[left] == word[right]) {
                left -= 1
                right += 1
            }
            
            var check = String(word[left+1...right-1])
            result = result.count < check.count ? check : result
            
            
            left = i
            right = i + 1
            while (left > -1) && (right < word.count) && (word[left] == word[right]) {
                left -= 1
                right += 1
            }
            
            if (left == i) && (right == i + 1) {
                continue
            }
            
            check = String(word[left+1...right-1])
            result = result.count < check.count ? check : result
        }
        
        return result
    }
}