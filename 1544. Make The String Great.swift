class Solution {
    func makeGood(_ s: String) -> String {
        var stack : [String] = []
        for char in s {
            if stack.count == 0 {
                stack.append(String(char))
                continue
            }
            
            var temp = String(char)
            
            if stack[stack.count - 1].uppercased() != stack[stack.count - 1] && stack[stack.count - 1].uppercased() == temp {
                stack.removeLast()
                continue
            }
            
            if stack[stack.count - 1].lowercased() != stack[stack.count - 1] && stack[stack.count - 1].lowercased() == temp {
                stack.removeLast()
                continue
            }
            
            stack.append(temp)
        }
        
        return stack.joined(separator: "")
    }
}