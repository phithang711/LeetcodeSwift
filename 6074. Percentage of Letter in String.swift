class Solution {
    func percentageLetter(_ s: String, _ letter: Character) -> Int {
        let storeCount = s.count
        var countSame = 0
        
        for char in s {
            if (char == letter) {
                countSame += 1
            }
        }
        
        let val = Double(countSame) / Double(storeCount) * 100.0
        return Int(val)
    }
}