class Solution {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        var check : [Character: Int] = [:]
        for char in s {
            if check[char] == nil {
                check[char] = 1
            } else {
                check[char] = check[char]! + 1
            }
        }
        
        for char in t {
            if check[char] == nil || check[char] == 0 {
                return char
            }
            
            check[char] = check[char]! - 1
        }
        
        return Character("")
    }
}