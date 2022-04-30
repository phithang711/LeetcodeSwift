class Solution {
    func countUnguarded(_ m: Int, _ n: Int, _ guards: [[Int]], _ walls: [[Int]]) -> Int {
        var check : [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: m)
        var count = m * n
        
        for wall in walls {
            check[wall[0]][wall[1]] = 2
            count -= 1
        }
        
        for guardItem in guards {
            check[guardItem[0]][guardItem[1]] = 2
            count -= 1
        }
        
        for guardItem in guards {
            count -= bfs(&check, guardItem[0], guardItem[1])
        }
        
        return count
    }
    
    func bfs(_ check: inout [[Int]], _ i: Int, _ j: Int) -> Int {
        var count = 0
        
        var x = i - 1
        
        while x >= 0 {
            if (check[x][j] == 2) {
                break
            }
            
            if (check[x][j] == 0) {
                count += 1
                check[x][j] = 1 
            } 
            
            x -= 1
        }
        
        x = i + 1
        
        while (x < check.count) {
            if (check[x][j] == 2) {
                break
            } 
            
            if (check[x][j] == 0) {
                count += 1
                check[x][j] = 1
            }
            
            x += 1
        }
        
        var y = j - 1
        while y >= 0 {
            if (check[i][y] == 2) {
                break
            } 
            
            if (check[i][y] == 0) {
                count += 1
                check[i][y] = 1
            } 
            y -= 1
        }
        
        y = j + 1
        
        while y < check[i].count {
            if (check[i][y] == 2) {
               break
            }
            
            if (check[i][y] == 0) {
                count += 1
                check[i][y] = 1  
            } 
            
            y += 1
        }
        
        return count   
    }
}