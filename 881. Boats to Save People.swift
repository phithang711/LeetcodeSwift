class Solution {
    func numRescueBoats(_ people: [Int], _ limit: Int) -> Int {
        var people = people
        people.sort()
        
        var count = 0
        
        var i = 0
        var j = people.count - 1
        
        while i <= j {
            count += 1
            if (people[i] + people[j] <= limit) {
                i += 1
            }
            j -= 1
        }
        
        return count
    }
}