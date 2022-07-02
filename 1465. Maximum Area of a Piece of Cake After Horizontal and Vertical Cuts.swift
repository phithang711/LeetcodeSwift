class Solution {
    func maxArea(_ h: Int, _ w: Int, _ horizontalCuts: [Int], _ verticalCuts: [Int]) -> Int {
        var horizontalCuts = horizontalCuts
        var verticalCuts = verticalCuts
        horizontalCuts.sort{$0 < $1}
        verticalCuts.sort{$0 < $1}
        
        var horizontalCutsSpace = horizontalCuts
        var verticalCutsSpace = verticalCuts
        for i in 1..<horizontalCutsSpace.count {
            horizontalCutsSpace[i] -= horizontalCuts[i - 1]
        }
        
        let mod = 1000000007
        
        horizontalCutsSpace.append(h - horizontalCuts[horizontalCuts.count - 1])
        
        for i in 1..<verticalCutsSpace.count {
            verticalCutsSpace[i] -= verticalCuts[i - 1]
        }
        
        verticalCutsSpace.append(w - verticalCuts[verticalCuts.count - 1])
        
        let maxHorizontal = horizontalCutsSpace.max()!
        let maxVertical = verticalCutsSpace.max()!
        
        return (maxHorizontal * maxVertical) % mod
    }
}