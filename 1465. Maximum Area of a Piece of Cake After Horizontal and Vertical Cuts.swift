class Solution {
    func maxArea(_ h: Int, _ w: Int, _ horizontalCuts: [Int], _ verticalCuts: [Int]) -> Int {
        var horizontalCuts = horizontalCuts
        var verticalCuts = verticalCuts
        horizontalCuts.sort{$0 < $1}
        verticalCuts.sort{$0 < $1}
        
        horizontalCuts.append(h)
        verticalCuts.append(w)
        
        let mod = 1000000007
        
        var maxHorizontal = horizontalCuts[0]
        var maxVertical = verticalCuts[0]
        var diff = 0
        
        for i in 1..<horizontalCuts.count {
            diff = horizontalCuts[i] - horizontalCuts[i - 1]
            
            if maxHorizontal < diff {
                maxHorizontal = diff
            }
        }
        
        for i in 1..<verticalCuts.count {
            diff = verticalCuts[i] - verticalCuts[i - 1]
            
            if maxVertical < diff {
                maxVertical = diff
            }
        }
        
        return (maxHorizontal * maxVertical) % mod
    }
}