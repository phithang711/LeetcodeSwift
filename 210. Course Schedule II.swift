class Solution {
    func findOrder(_ numCourses: Int, _ prerequisites: [[Int]]) -> [Int] {
        var dictPrerequisite : [Int:Int] = [:]
        var dictTrack : [Int:[Int]] = [:]
        
        for prerequisite in prerequisites {
            if dictTrack[prerequisite[0]] != nil && dictTrack[prerequisite[0]]!.contains(prerequisite[1]) {
                return []
            }
            
            dictTrack[prerequisite[1], default: []].append(prerequisite[0])
            dictPrerequisite[prerequisite[0], default: 0] += 1
        }
        
        var count = 0
        var result : [Int] = []
        
        for _ in 0..<numCourses {
            for key in 0..<numCourses {
                if (dictPrerequisite[key] == nil || dictPrerequisite[key]! == 0) && (!result.contains(key)) {
                    result.append(key)
                    count += 1
                    
                    if count == numCourses {
                        return result
                    }
                    
                    if dictTrack[key] != nil {
                        let vals = dictTrack[key]!
                        for val in vals {
                            dictPrerequisite[val]! -= 1
                        }
                    }
                }
            }
        }
        
        return count == numCourses ? result : []    
    }
}