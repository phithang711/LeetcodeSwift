class Solution {
    func furthestBuilding(_ heights: [Int], _ bricks: Int, _ ladders: Int) -> Int {
        var remainingBricks = bricks
        var remainingLadders = ladders   
        var saveMaxBrickNeedCell : [Int] = []
        
        for i in 0..<heights.count - 1 {
            if heights[i] >= heights[i + 1] {
                continue
            }
            
            let space = heights[i + 1] - heights[i]
            if remainingBricks > 0 && remainingBricks - space >= 0 {
                saveMaxBrickNeedCell.append(space)
                remainingBricks -= space
                continue
            } 
            
            // if remaining brick not full to fill next step
            remainingLadders -= 1
            if (remainingLadders < 0) {
                return i
            } else {
                let maxIndex = self.getMaxIndex(saveMaxBrickNeedCell)
                    
                if maxIndex != -1 && space < saveMaxBrickNeedCell[maxIndex] {
                    remainingBricks += saveMaxBrickNeedCell[maxIndex] - space
                    saveMaxBrickNeedCell[maxIndex] = -1;
                    saveMaxBrickNeedCell.append(space)
                }
            }
        }
        
        return heights.count - 1
    }
    
    func getMaxIndex(_ list: [Int]) -> Int {
        var max = Int.min
        var index = -1
        for i in 0..<list.count {
            if max < list[i] {
                max = list[i]
                index = i
            }
        }
        
        return index
    }
}