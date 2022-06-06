class Solution {
    func lexicalOrder(_ n: Int) -> [Int] {
        var arr : [String] = []
        for i in 1...n {
            arr.append(String(i))
        }
        
        arr.sort{$0<$1}
        
        let result = arr.map{Int($0)!}
        return result
    }
}