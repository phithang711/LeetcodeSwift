class Solution {
    func canVisitAllRooms(_ rooms: [[Int]]) -> Bool {
        var listCheckIndex = Array(repeating: false, count: rooms.count) 
        var n = 0
        
        visit(rooms, &n, &listCheckIndex, startIndex: 0)
        
        if (n != rooms.count) {
            return false
        }
        
        return true
    }
    
    func visit(_ rooms: [[Int]],_ n: inout Int,_ listCheckIndex: inout [Bool], startIndex: Int) {
        if (listCheckIndex[startIndex] == true) {
            return
        }
        
        listCheckIndex[startIndex] = true
        n += 1
        
        for room in rooms[startIndex] {
            if listCheckIndex[room] == false {
                visit(rooms, &n, &listCheckIndex, startIndex: room)
            }
        }
    }
}