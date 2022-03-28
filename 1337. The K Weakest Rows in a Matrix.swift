class Solution {
    func kWeakestRows(_ mat: [[Int]], _ k: Int) -> [Int] {
        var countSol: [Int] = []
        var result: [Int] = []
    
        for row in mat {
            countSol.append(row.filter{$0 == 1}.count)
        }
        
        var setCountSol = Array(Set(countSol))
        setCountSol.sort()
        var index = 0
        var count = 0
        
        while (count < k) {
            var countIndex : [Int] = []
            let variable = setCountSol[index]
            print("variable: ", variable)
            
            for j in 0..<countSol.count {
               if countSol[j] == variable {
                   countIndex.append(j)
               }
            }
              
            if ((count + countIndex.count) >= k) {
                result.append(contentsOf: countIndex.dropLast(count + countIndex.count - k))
            } 
            else {
                result.append(contentsOf: countIndex)  
            }
                
            count += countIndex.count
            index += 1
        }

        return result
    }
}