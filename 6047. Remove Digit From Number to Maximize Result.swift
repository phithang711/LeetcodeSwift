class Solution {
    func removeDigit(_ number: String, _ digit: Character) -> String {
        
        var numberArray = number.map { String($0) }
        let defaultArray = numberArray
        let digit = String(digit)
        
        var result : [String] = []
        
        for i in 0..<numberArray.count {
            if numberArray[i] == digit {
                numberArray.remove(at: i)
                result.append(numberArray.joined(separator: ""))
                numberArray = defaultArray
            }
        }
        
        result.sort { $0 > $1 }
        
        return result[0]
    }
}