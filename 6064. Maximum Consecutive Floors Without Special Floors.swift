class Solution {
    func maxConsecutive(_ bottom: Int, _ top: Int, _ special: [Int]) -> Int {
        var special = special
        special.sort()
        
        var max = 0
        
        var temp = 0
        
        for i in 0..<special.count {
            if i == 0 {
                temp = special[i] - bottom
                
                if (max < temp) {
                    max = temp
                }
                //continue
            }
            
            if (i != 0) {
                temp = special[i] - special[i - 1] - 1
            
                if (max < temp) {
                    max = temp
                }
            }
            
            
            if i == special.count - 1 {
                temp = top - special[i]
                
                if (max < temp) {
                    max = temp
                }
               // continue
            }
        }
        
        return max
    }
}