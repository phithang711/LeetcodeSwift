class Solution {
    func numMatchingSubseq(_ s: String, _ words: [String]) -> Int {
        var dict : [Character : [Int]] = [:]
        
        var result = 0
        
        var index = 0
        for char in s {
            dict[char, default: []].append(index)
            index += 1
        }
        
        for word in words {
            var count = 0
            var firstIndex = -1
            for char in word {
                if dict[char] == nil || dict[char]!.count == 0 {
                    break
                }
                
                let arr = dict[char]!
                
                var index = 0
                while (index < arr.count) && (firstIndex >= arr[index]) {
                    index += 1
                }
                
                if (index >= arr.count) {
                    break
                }
                
                firstIndex = arr[index]
                count += 1
            }

            if (count == word.count) {
                result += 1
            }
        }
        
        return result
    }
}