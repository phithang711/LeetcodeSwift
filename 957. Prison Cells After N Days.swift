class Solution {
    func prisonAfterNDays(_ cells: [Int], _ n: Int) -> [Int] {
        if (n <= 0) {
            return cells
        }
        
        var cells = cells
        var repeated : [[Int]] = []
        for i in 0..<n {
            var result = Array(repeating: 0, count: 8)
            result[0] = 0
            for i in 1...6 {
                if (cells[i - 1] == cells[i + 1]) {
                    result[i] = 1
                }
            }
            
            result[7] = 0
            if (!repeated.contains(result)) {
                repeated.append(result)
            } else {
                break
            }
            
            cells = result
        }
        
        var temp = n
        while (temp > repeated.count) {
            temp -= repeated.count
        }
              
        if (temp != n) {
            return repeated[temp - 1]
        }
        
        
        return cells
    }
}