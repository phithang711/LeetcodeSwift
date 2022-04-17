class Solution {
    private var hashMap = Dictionary<Int,Int>()
    
    func put(_ key: Int) {
        let value = self.get(key)
        
        if (value == -1) {
            hashMap[key] = 1
        } else {
            hashMap[key] = value + 1
        }
    }
    
    func get(_ key: Int) -> Int {
        return hashMap[key] ?? -1
    }
    
    func findMin(_ key: Int) -> Int {
        let value = self.get(key)
        
        var check = value / 3
        var max = 99999999
        var step2 = 0
        for i in 0...check {
            step2 = value - 3 * i   
            if (step2 % 2 == 0) {
                if (max > step2 / 2 + i) {
                    max = step2 / 2 + i
                }
            }
        }
        
        if (max == 99999999) {
            return -1
        }
        
        return max
    }
    
    func minimumRounds(_ tasks: [Int]) -> Int {
        var tasks = tasks
        tasks.sort()
        
        for task in tasks {
            self.put(task)
        }
        
        tasks = Array(Set(tasks))
        
        var count = 0
        
        for task in tasks {
            
            let step = findMin(task)
            
            if (step == -1) {
                return -1
            }
            
            count += step
        }
        
        return count
        
    }
}