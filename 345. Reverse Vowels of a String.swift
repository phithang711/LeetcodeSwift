class Solution {
    func reverseVowels(_ s: String) -> String {
        var listS = s.map {String($0)}
        var listVowel : [String] = []

        for char in listS {
            if char.lowercased().isVowels() {
                listVowel.append(char)
            }
        }

        listVowel = listVowel.reversed()

        var final = ""
        var index = 0
        for char in listS {
            if char.lowercased().isVowels() {
                final += listVowel[index]
                index += 1
                continue
            }

            final += char
        }

        return final
    }
}

extension String {
    func isVowels() -> Bool {
        if self == "a" || self == "e" || self == "i" || self == "o" || self == "u" {
            return true
        }

        return false
    }
}