class Solution {
    func findKthBit(_ n: Int, _ k: Int) -> Character {
        if (n == 1) {
            return "0"
        }
        
        var result = "0"
        var temp = ""
        for i in 2...n {
            if result != "" {
                temp = ""
                for char in result.reversed() {
                    if (char == "0") {
                        temp += "1"
                    } else {
                        temp += "0"
                    }
                }
            }
            
            result = result + "1" + temp
        }
        
        return Array(result)[k-1]
    }
}