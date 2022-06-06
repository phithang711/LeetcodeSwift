class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var arr : [Character:Int] = [:]
        for char in s {
            if arr[char] == nil {
                arr[char] = 1
            } else {
                arr[char] = arr[char]! + 1
            }
        }
        
        var index = -1
        for char in s {
            index += 1
            if arr[char]! == 1 {
                return index
            }
        }
        
        return -1
    }
}