class Solution {
    func scheduleCourse(_ courses: [[Int]]) -> Int {
        var courses = courses
        courses.sort {$0[1] < $1[1]}
        
        var resultArr : [Int] = []
        var sum = 0
        
        for course in courses {
            sum += course[0]
            resultArr.append(course[0])
            resultArr.sort()
            
            if sum > course[1] {
                // because we remove the max so always there will have min replacement course in here
                sum -= resultArr[resultArr.count - 1]
                resultArr = resultArr.dropLast()
            }
            
        }
        return resultArr.count
    }
}