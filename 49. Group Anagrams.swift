class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dict : [String:[String]] = [:]

        for word in strs {
            let sortedWord = String(word.sorted())

            dict[sortedWord, default: []].append(word)
        }

        var result : [[String]] = []
        for key in dict.keys {
            result.append(dict[key]!)
        }

        return result
    }
}