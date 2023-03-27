class Solution {
    func isValid(_ s: String) -> Bool {
        var listChar : [String] = []

        let sArr = s.map{ String($0) }

        for char in sArr {
            if char == "(" || char == "[" || char == "{" {
                listChar.append(char)
                continue
            }

            if listChar.count == 0 {
                return false
            }

            if char == ")" {
                if (listChar[listChar.count - 1] == "(") {
                    listChar.removeLast()
                } else {
                    return false
                }
            }

            if char == "}" {
                if (listChar[listChar.count - 1] == "{") {
                    listChar.removeLast()
                } else {
                    return false
                }
            }

            if char == "]" {
                if (listChar[listChar.count - 1] == "[") {
                    listChar.removeLast()
                } else {
                    return false
                }
            }
        }

        return listChar.count == 0
    }
}