class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var ransomNote = ransomNote
        var magazine = magazine
        
        for i in ransomNote {
            let index = magazine.firstIndex(of: i)
            if (index == nil) {
                return false
            } 
            magazine.remove(at: index!)
        }
        
        return true
    }
}