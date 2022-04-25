class Solution {
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        var check = Array(repeating: Array(repeating: false, count: board[0].count), count: board.count)
        
        var wordArray = word.map { $0 }
        var finalCheck = false
        
        for i in 0..<board.count {
            for j in 0..<board[i].count {
                if (board[i][j] == wordArray[0]) {
                    finalCheckBoard(board, wordArray, check, i, j, 0, &finalCheck)
            
                    if (finalCheck) {
                        return true
                    }
                }
            }
        }
        
        return false
    }
    
    func finalCheckBoard(_ board: [[Character]], _ wordArray: [Character],_ check: [[Bool]],_ i: Int,_ j: Int, _ index: Int, _ finalCheck: inout Bool) {
        if (finalCheck) {
            return
        }
        
        if (check[i][j]) {
            return
        }
        
        if (index == wordArray.count - 1) {
            finalCheck = true
            return
        }
        
        var check = check
        check[i][j] = true
        
        if (i - 1 >= 0) && (check[i - 1][j] == false) && (board[i - 1][j] == wordArray[index + 1]) && (!finalCheck) {
            finalCheckBoard(board, wordArray, check, i - 1, j, index + 1, &finalCheck)
        }
        
        if (i + 1 < board.count) && (check[i + 1][j] == false) && (board[i + 1][j] == wordArray[index + 1]) && (!finalCheck) {
            finalCheckBoard(board, wordArray, check, i + 1, j, index + 1, &finalCheck)
        }
        
        if (j - 1 >= 0) && (check[i][j - 1] == false) && (board[i][j - 1] == wordArray[index + 1]) && (!finalCheck) {
            finalCheckBoard(board, wordArray, check, i, j - 1, index + 1, &finalCheck)
        }
        
        if (j + 1 < board[i].count) && (check[i][j + 1] == false) && (board[i][j + 1] == wordArray[index + 1]) && (!finalCheck) {
            finalCheckBoard(board, wordArray, check, i, j + 1, index + 1, &finalCheck)
        }
    }
}