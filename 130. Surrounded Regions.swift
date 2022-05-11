class Solution {
    func solve(_ board: inout [[Character]]) {
        var finalBoard : [[Character]] = Array(repeating: Array(repeating: "X", count: board[0].count), count: board.count)
        for j in 0..<board[0].count {
            // line top
            if (String(board[0][j]) == "O") && (String(finalBoard[0][j]) == "X") {
                dfs(&finalBoard, board, 0, j)
            }
            
            // line bottom
            if (String(board[board.count - 1][j]) == "O") && (String(finalBoard[board.count - 1][j]) == "X") {
                dfs(&finalBoard, board, board.count - 1, j)
            }
        }
        
        for i in 1..<board.count {
            // line left
            if (String(board[i][0]) == "O") && (String(finalBoard[i][0]) == "X") {
                dfs(&finalBoard, board, i, 0)
            }
            
            // line right
            if (String(board[i][board[0].count - 1]) == "O") && (String(finalBoard[i][board[0].count - 1]) == "X") {
                dfs(&finalBoard, board, i, board[0].count - 1)
            }
        }
        
        board = finalBoard
    }
    
    func dfs(_ finalBoard: inout [[Character]],_ board: [[Character]], _ i: Int,_ j: Int) {
        if (String(board[i][j]) == "X") || (String(finalBoard[i][j]) == "O") {
            return
        }
        
        finalBoard[i][j] = "O"
        
        // top
        if (i > 0) && (String(board[i-1][j]) == "O") && (String(finalBoard[i-1][j]) == "X") {
            dfs(&finalBoard, board, i - 1, j)
        }
        
        // left
        if (j > 0) && (String(board[i][j-1]) == "O") && (String(finalBoard[i][j-1]) == "X") {
            dfs(&finalBoard, board, i, j - 1)
        }
        
        // bottom
        if (i + 1 < board.count) && (String(board[i+1][j]) == "O") && (String(finalBoard[i+1][j]) == "X") {
            dfs(&finalBoard, board, i + 1, j)
        } 
        
        // right
        if (j + 1 < board[i].count) && (String(board[i][j+1]) == "O" ) && (String(finalBoard[i][j+1]) == "X") {
            dfs(&finalBoard, board, i, j + 1)
        }
    }
}