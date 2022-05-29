class Solution {
    func discountPrices(_ sentence: String, _ discount: Int) -> String {
        var result = ""
        let space = sentence.components(separatedBy: " ")
        
        for word in space {
            if String(word.first!) != "$" {
                result += word + " "
            } else {
                if let num = Double(word.dropFirst()) {
                    let temp = (num / 100.00) * Double(100 - discount)
                    result += "$" + String(format: "%.2f", temp) + " "
                } else {
                    result += word + " "
                }
            }
        }
        
        result.removeLast()
        return result
    }
}

extension Double {
    /// Rounds the double to decimal places value
    func rounded(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}

extension String  {
    var isNumber: Bool {
        return !isEmpty && rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil
    }
}
