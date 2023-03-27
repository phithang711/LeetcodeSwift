class Solution {
    func secondHighest(_ s: String) -> Int {
        var sArr = s.map{String($0)}

        var finalArr : [Int] = []

        for char in sArr {
            guard let num = Int(String(char)) else {
                continue
            }

            finalArr.append(num)
        }

        finalArr = Array(Set(finalArr))
        if (finalArr.count < 2) {
            return -1
        }

        finalArr.sort {$0 > $1}
        return finalArr[1]
    }
}