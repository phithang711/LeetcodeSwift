class Solution {
    func longestPalindrome(_ words: [String]) -> Int {
        var dict : [String : Int] = [:]
        
        var result = 0
        var count = 0
        
        for word in words {
            let reversed = String(word.reversed())
            
            if (dict[reversed] != nil) && (dict[reversed]! > 0) {
                // because of 2 characters eeach
                result += 4
                dict[reversed] = dict[reversed]! - 1
                
                if word == reversed {
                    count -= 1
                }
                
                continue
            }
            
            if (dict[word] == nil) {
                dict[word] = 1
            } else {
                dict[word] = dict[word]! + 1
            }
            
            if word == reversed {
                count += 1
            }
        }
        
        return count > 0 ? result + 2 : result
    }
}