class Solution {
    func addSpaces(_ s: String, _ spaces: [Int]) -> String {
        if spaces.count <= 0 {
            return s
        }
        
        let space = " "
        
        var start = 0
        var i = 0
        var next = 0
        var result = ""
        
        if spaces[start] == 0 {
            start += 1
            result += space
        }
        
        for char in s {
            i += 1
            result += String(char)
            if (start < spaces.count) && (i == spaces[start]) {
                result += space
                start += 1
            }
        }
        
        return result
    }
}