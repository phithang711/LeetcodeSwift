
class MyStack {
    var stack : [Int] = []
    
    init() {
        
    }
    
    func push(_ x: Int) {
        stack.append(x)
    }
    
    func pop() -> Int {
        defer {
            stack = stack.dropLast()
        }
        return stack[stack.count - 1]
    }
    
    func top() -> Int {
        return stack[stack.count - 1]
    }
    
    func empty() -> Bool {
        return stack.count == 0 ? true : false
    }
}

/**
 * Your MyStack object will be instantiated and called as such:
 * let obj = MyStack()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Bool = obj.empty()
 */