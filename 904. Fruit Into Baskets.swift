class Solution {
    func totalFruit(_ fruits: [Int]) -> Int {
        var result : [Int] = []
        var count: [Int] = []
        
        if fruits.count <= 1 {
            return 1
        }
        
        var i = 0
        while i < fruits.count {
        //for fruit in fruits {
            if result.count <= 1 {
                result.append(fruits[i])
                count.append(1)
                i += 1
                while i < fruits.count && fruits[i] == fruits[i - 1] {
                    count[count.count - 1] += 1
                    i += 1
                }
                
                continue
            }
            
            if result[result.count - 1] == fruits[i] {
                count[count.count - 1] += 1
                i += 1
                continue
            }
            
            result.append(fruits[i])
            count.append(1)
            i += 1
        }
        
        var max = 0
        i = 0
        
        // check list count value
        if (count.count == 1) {
            return count[0]
        }
        
        if (count.count == 2) {
            return count[0] + count[1]
        }
        
        while i < count.count {
            var left = result[i]
            if (i + 1 >= count.count) {
                return max
            }
            
            var right = result[i + 1]
            var countVal = count[i] + count[i + 1]
            var j = i + 2
            while (j < count.count) && (result[j] == left || result[j] == right) {
                countVal += count[j]
                j += 1
            }
            
            if max < countVal {
                max = countVal
            }
            
            i += 1
        }
        
        return max
    }
}