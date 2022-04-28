class Solution {
    func countCollisions(_ directions: String) -> Int {
       // var directionArr = directions.map { String($0) }
        
        var count  = 0
        var temp = 0
        
        var arrToPop : [Character] = []
        
        for direction in directions {            
            if (arrToPop.count == 0) {
                arrToPop.append(direction)
                continue
            }
            
            if (direction == "L") {
                if (arrToPop[arrToPop.count - 1] == "R") {
                    count += 2
                    arrToPop[arrToPop.count - 1] = "S"
                    
                    temp = arrToPop.count - 2
                    
                    while (temp >= 0) && (arrToPop[temp] == "R") {
                        count += 1
                        temp -= 1
                    }
                } else if (arrToPop[arrToPop.count - 1] == "S") {
                    count += 1
                } else {
                    arrToPop.append(direction)
                }
                continue
            }
            
            if (direction == "S") {
                temp = arrToPop.count - 1
                while (temp >= 0) && (arrToPop[temp] == "R") {
                        count += 1
                        temp -= 1
                }
                
                arrToPop.append(direction)
                continue
            }
            
            if (direction == "R") {
                arrToPop.append(direction)
                continue
            }
        }
        
        return count   
    }
}