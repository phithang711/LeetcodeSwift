class Solution {
    func reconstructQueue(_ people: [[Int]]) -> [[Int]] {
        var people = people
        people.sort {
			if $0[0] == $1[0] {
				return $0[1] <= $1[1]
			} else {
				return $0[0] >= $1[0]
			}
		}
        
        var result : [[Int]] = []
        
        for person in people {
            result.insert(person, at: person[1])
        }
        
        return result
    }
}