class Solution {
    func maximumUnits(_ boxTypes: [[Int]], _ truckSize: Int) -> Int {
        var boxTypes = boxTypes
        boxTypes.sort {$0[1] > $1[1]}
    
        var result = 0
        var truckSize = truckSize
        for box in boxTypes {           
            if truckSize <= 0 {
                break
            }
            
            if box[0] <= truckSize {
                truckSize -= box[0]
                result += box[0] * box[1]
                continue
            }
            
            result += truckSize * box[1]
            break
        }
        
        return result
    }
}