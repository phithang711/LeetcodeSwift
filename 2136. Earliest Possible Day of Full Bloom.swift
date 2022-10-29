class Solution {
    func earliestFullBloom(_ plantTime: [Int], _ growTime: [Int]) -> Int {
        var plants : [[Int]] = []

        for i in 0..<plantTime.count {
            plants.append([plantTime[i], growTime[i]])
        }

        plants.sort {$0[1] > $1[1]}

        var result = 0
        var currentTime = 0

        for i in 0..<plants.count {
            let time = currentTime + plants[i][0] + plants[i][1]
            result = max(result, time)
            currentTime += plants[i][0]
        }

        return result
    }
}