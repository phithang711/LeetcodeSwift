class Solution {
    func rearrangeCharacters(_ s: String, _ target: String) -> Int {
        var dict: [String:Int] = [:]
        var s = s.map {String($0)}
        
        for char in s {
            if dict[char] == nil {
                dict[char] = 1
            } else {
                dict[char] = dict[char]! + 1
            }
        }
        
        var dictTarget: [String:Int] = [:]
        var target = target.map {String($0)}
        
        for char in target {
            if dictTarget[char] == nil {
                dictTarget[char] = 1
            } else {
                dictTarget[char] = dictTarget[char]! + 1
            }
        }
        
        target = Array(Set(target))
        
        var minNum = Int.max
        for char in target {
            var temp = 0
            if (dict[char] == nil) {
                return 0
            }
            
            temp = dict[char]! / dictTarget[char]!
            minNum = min(temp, minNum)
        }
        
        return minNum
    }
}