class Solution {
    let array = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    func replaceDigits(_ s: String) -> String {
        var result = ""
        var s = s.map { String($0) }
        
        
        
        for i in stride(from: 0, to: s.count - 1, by: 2) {
            let index = array.firstIndex(of: s[i])
            result += s[i] + array[index! + Int(s[i + 1])!]
        }
        
        if s.count % 2 != 0 {
            result += s[s.count - 1]
        }
        
        return result
    }
}