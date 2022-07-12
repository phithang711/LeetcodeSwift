class Solution {
    func makesquare(_ matchsticks: [Int]) -> Bool {
        let sum = matchsticks.reduce(0, +)
        var sides = [Int](repeating: 0, count: 4)
        
        if sum % 4 != 0 || sum < 4 {
            return false
        }
        
        let width = sum / 4
        
        var matchsticks = matchsticks
        matchsticks.sort {$0>$1}
        
        return self.helper(matchsticks, &sides, width, 0)
    }
    
    func helper(_ matchsticks: [Int], _ sides: inout [Int],_ width: Int, _ start: Int) -> Bool {
        for i in 0..<sides.count {
            if sides[i] + matchsticks[start] > width {
                continue
            }
          
            sides[i] += matchsticks[start]
            
            if start < matchsticks.count - 1 {
                if helper(matchsticks, &sides, width, start + 1) == true { 
                    return true 
                }
            } else {
                if sides[0] == width && sides[1] == width && sides[2] == width { 
                    return true 
                }
            }
            
            sides[i] -= matchsticks[start]
        }
        
        return false
    }
}