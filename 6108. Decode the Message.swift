class Solution {
    func decodeMessage(_ key: String, _ message: String) -> String {
        let array = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
        
        var dict : [Character:String] = [:]
        
        var startIndex = 0
        
        for char in key {
            if char == " " {
                continue
            }
            
            if dict[char] != nil {
                continue
            }
            
            if dict[char] == nil {
                dict[char] = array[startIndex]
                startIndex += 1
            }
        }
        
        var result = ""
        for char in message {
            guard let mapping = dict[char] else {
                result += String(char)
                continue
            }
            
            result += mapping
        }
        
        return result
    }
}