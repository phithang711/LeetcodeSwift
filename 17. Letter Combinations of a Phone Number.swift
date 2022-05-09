class Solution {
    var numberToLetter : [String: [String]] = [
        "2" : ["a", "b", "c"],
        "3" : ["d", "e", "f"],
        "4" : ["g", "h", "i"],
        "5" : ["j", "k", "l"],
        "6" : ["m", "n", "o"],
        "7" : ["p", "q", "r", "s"],
        "8" : ["t", "u", "v"],
        "9" : ["w", "x", "y", "z"]
    ]
    
    func letterCombinations(_ digits: String) -> [String] {
        var digitArr = digits.map { String($0) }
        digitArr.reversed()
        
        var result : [String] = []
        var temp : [String] = []
        
        for digit in digitArr {
            if result.count > 0 {
                temp = []
                var nums = numberToLetter[digit]
                
                for num in nums! {
                    for val in result {
                        temp.append(val + num)
                    }
                }
                
                result = temp
            } else {
                result = numberToLetter[digit]!
            }
        }
        
        return result
    }
}