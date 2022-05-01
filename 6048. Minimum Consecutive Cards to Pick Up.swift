class Solution {
    func minimumCardPickup(_ cards: [Int]) -> Int {
        var dict : [Int:[Int]] = [:]
        
        for i in 0..<cards.count {
            if dict[cards[i]] == nil {
                dict[cards[i]] = [i]
            } else {
                dict[cards[i]]!.append(i)
            }
        }
        
        var arr = Array(Set(cards))
        
        var min = 99999999999
        
        for num in arr {
                if dict[num]!.count >= 2 {
                    for i in 1..<dict[num]!.count {
                        let temp = dict[num]![i] - dict[num]![i - 1]
                        if min > temp + 1 {
                            min = temp + 1
                        }
                    }
                }
            }
        
        if min == 99999999999 {
            return -1
        } else {
            return min
        }
    }
}