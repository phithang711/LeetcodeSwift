class Solution {
    func uniqueOccurrences(_ arr: [Int]) -> Bool {
        var dict : [Int:Int] = [:]

        for num in arr {
            dict[num, default: 0] += 1
        }

        var countSet : Set<Int> = Set()
        for key in dict.keys {
            if !countSet.contains(dict[key]!) {
                countSet.insert(dict[key]!)
            } else {
                return false
            }
        }

        return true
    }
}