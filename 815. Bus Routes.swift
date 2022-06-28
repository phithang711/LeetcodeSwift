class Solution {
    func numBusesToDestination(_ routes: [[Int]], _ source: Int, _ target: Int) -> Int {
        var dictBusStop : [Int: [Int]] = [:]
        for (index, busStops) in routes.enumerated() {
            for busStop in busStops {
                dictBusStop[busStop, default: []].append(index)
            }
        }
        
        if dictBusStop[source] == nil || dictBusStop[target] == nil {
            return -1
        }
        
        if target == source {
            return 0
        }
        
        var route = dictBusStop[source]!
        // Set is faster than array for checking duplicate
        var visitRoute : Set<Int> = Set()
        var visitBusStop : Set<Int> = Set()
        
        var temp : [Int] = []
        
        var count = 1
        while route.count > 0 {
            temp = []
            
            for index in route {
                if dictBusStop[target]!.contains(index) {
                    return count
                }
                
                for value in routes[index] {
                    if !visitRoute.contains(value) {
                        let vals = dictBusStop[value, default: []]
                        visitRoute.insert(value)
                        
                        for val in vals {
                            if !visitBusStop.contains(val) {
                                temp.append(val)
                                visitBusStop.insert(val)
                            }
                        }
                    }
                }
             }   
            
            route = temp
            
            count += 1
        }
        
        return -1
    }
}