class Solution {
    func calculateTax(_ brackets: [[Int]], _ income: Int) -> Double {
        var income = income
        var result = 0.0
        for i in 0..<brackets.count {
            if income == 0 {
                break
            }
            
            var value = 0
            if (i == 0) {
                value = brackets[i][0]
            } else {
                value = brackets[i][0] - brackets[i-1][0]
            }
            
            if (income < value) {
                value = income
                income = 0
            } else {
                income -= value
            }
            
            result += Double(value) * (Double(brackets[i][1]) / 100.0)
        }
        
        return Double((result * pow(10.0, 5.0)).rounded() / pow(10.0, 5.0))
    }
}