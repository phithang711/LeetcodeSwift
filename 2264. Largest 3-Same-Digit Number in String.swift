class Solution {
    func largestGoodInteger(_ num: String) -> String {
        var s = num.map { String($0) }
        var max = -1
        
        var i = 0
        
        while (i < s.count - 2) && (s[i] == "0") {
            if (s[i] == s[i + 1]) && (s[i + 1] == s[i + 2]) {
                if max < Int(s[i])! {
                    max = Int(s[i])!
                    if (max == 9) {
                        return maxNumReturn(9)
                    }
                }
                i += 3
                continue
            }
            
            i += 1
        }
        
        while (i < s.count - 2) {
            if (s[i] == s[i + 1]) && (s[i + 1] == s[i + 2]) {
                if max < Int(s[i])! {
                    max = Int(s[i])!
                    if (max == 9) {
                        return maxNumReturn(9)
                    }
                }
                i += 3
                continue
            }
            
            i += 1
        }
        
        if (max == -1) {
            return ""
        } else {
            return maxNumReturn(max)
        }
    }
    
    func maxNumReturn(_ target: Int) -> String {
        var result = ""
        for _ in 0...2 {
            result += String(target)
        }
        
        return result
    }
}