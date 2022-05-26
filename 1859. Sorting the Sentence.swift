class Solution {
    func sortSentence(_ s: String) -> String {
        var arr = s.split(separator: " ")
        var resultArr = Array(repeating: "", count: 9)
        for i in 0..<arr.count {
            let index = Int(String(String(arr[i]).last!))!

            let temp = String(arr[i].dropLast())
            resultArr[index - 1] = temp
        }
        
        var result = ""
        for i in 0...8 {
            if (resultArr[i] == "") {
                continue
            }
                
            if (result == "") {
                result = resultArr[i]
                continue
            }
            
            result += " " + resultArr[i]
        }

        return result
    }
}