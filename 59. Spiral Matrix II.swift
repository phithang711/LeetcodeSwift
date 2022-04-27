class Solution {
    func generateMatrix(_ n: Int) -> [[Int]] {
        var array = Array(repeating: Array(repeating: 0, count: n), count: n)
        
        generate(&array, 0, 0, 1, 0)
        
        return array
    }
    
    func generate(_ array: inout [[Int]],_ i: Int,_ j: Int,_ value: Int,_ direction: Int) {
        if (array[i][j] != 0) {
            return   
        }
        
        array[i][j] = value
        
        // right
        if (direction == 0) {
            if (j + 1 < array[i].count) && (array[i][j + 1] == 0) {
                generate(&array, i, j + 1, value + 1, 0)
            } else {
                // if can not go right, go down
                if (i + 1 < array.count) && (array[i + 1][j] == 0) {
                    generate(&array, i + 1, j, value + 1, 1)
                }
            }
        }
        
        // down
        if (direction == 1) {
            if (i + 1 < array.count) && (array[i + 1][j] == 0) {
                generate(&array, i + 1, j, value + 1, 1)
            } else {
                // if can not go down, go left
                if (j - 1 >= 0) && (array[i][j - 1] == 0) {
                    generate(&array, i, j - 1, value + 1, 2)
                }
            }
        }
        
        // left
        if (direction == 2) {
            if (j - 1 >= 0) && (array[i][j - 1] == 0) {
                generate(&array, i, j - 1, value + 1, 2)
            } else {
                // if can not go left, go up
                if (i - 1 >= 0) && (array[i - 1][j] == 0) {
                    generate(&array, i - 1, j, value + 1, 3)
                }
            }
        }
        
        // up
        if (direction == 3) {
            if (i - 1 >= 0) && (array[i - 1][j] == 0) {
                generate(&array, i - 1, j, value + 1, 3)
            } else {
                // if can not go up, go left
                if (j + 1 < array[i].count) && (array[i][j + 1] == 0) {
                    generate(&array, i, j + 1, value + 1, 0)
                }
            }
        }
    }
}