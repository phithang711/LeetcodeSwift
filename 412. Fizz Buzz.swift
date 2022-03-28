class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var final : [String] = []
        for i in 1..<n + 1 {
            if ((i % 3 == 0) && (i % 5 == 0)) {
                final.append("FizzBuzz")
            } else if (i % 3 == 0) {
                final.append("Fizz")
            } else if (i % 5 == 0) {
                final.append("Buzz")
            } else {
                final.append(String(i))
            }
        }
        return final
    }
}