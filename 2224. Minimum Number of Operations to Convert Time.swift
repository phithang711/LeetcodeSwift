class Solution {
    func convertTime(_ current: String, _ correct: String) -> Int {
        let currentTimeArr = current.split(separator:":")
        let correctTimeArr = correct.split(separator:":")
        
        var time = 0
        var count = 0
        var temp = 0
        var minuteCurrent = Int(currentTimeArr[1])!
        var minuteCorrect = Int(correctTimeArr[1])!
        
        if (minuteCorrect < minuteCurrent) {
                minuteCorrect += 60
                time += 1
            }
        
        var minus = minuteCorrect - minuteCurrent
        var div = minus / 15
        count += div
        minus = minus % 15
        
        div = minus / 5
        count += div
        minus = minus % 5
        
        count += minus
        var hoursCurrent = Int(currentTimeArr[0])!
        var hoursCorrect = Int(correctTimeArr[0])!
        
        if (hoursCorrect <  hoursCurrent) {
            count += (hoursCorrect + 24 - hoursCurrent - time)
        } else {
            count += (hoursCorrect - hoursCurrent - time)
        }
        
        return count
    }
}