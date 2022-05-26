class Solution {
    func memLeak(_ memory1: Int, _ memory2: Int) -> [Int] {
        var crashTime = 1
        var memory1 = memory1
        var memory2 = memory2
        
        while (crashTime <= memory1) || (crashTime <= memory2) {
            let findMemory = memory1 >= memory2 ? true : false
            if (findMemory) {
                memory1 -= crashTime
            } else {
                memory2 -= crashTime
            }
            
            crashTime += 1
        }
        
        return [crashTime, memory1, memory2]
    }
}