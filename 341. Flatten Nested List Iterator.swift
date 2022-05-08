/**
 * // This is the interface that allows for creating nested lists.
 * // You should not implement it, or speculate about its implementation
 * class NestedInteger {
 *     // Return true if this NestedInteger holds a single integer, rather than a nested list.
 *     public func isInteger() -> Bool
 *
 *     // Return the single integer that this NestedInteger holds, if it holds a single integer
 *     // The result is undefined if this NestedInteger holds a nested list
 *     public func getInteger() -> Int
 *
 *     // Set this NestedInteger to hold a single integer.
 *     public func setInteger(value: Int)
 *
 *     // Set this NestedInteger to hold a nested list and adds a nested integer to it.
 *     public func add(elem: NestedInteger)
 *
 *     // Return the nested list that this NestedInteger holds, if it holds a nested list
 *     // The result is undefined if this NestedInteger holds a single integer
 *     public func getList() -> [NestedInteger]
 * }
 */

class NestedIterator {
    var nestedArr: [Int] = []
    var count = -1
    
    func analysisNestedList(_ nest: NestedInteger) -> [Int] {
        if (nest.isInteger() == true) {
            return [nest.getInteger()]
        }
        
        var listNest = nest.getList()
        
        if listNest.count <= 0 {
            return []
        }
        
        var result : [Int] = []
        
        for list in listNest {
            var temp = self.analysisNestedList(list)
            for value in temp {
                result.append(value)
            }
        }
        
        return result
    }
    
    init(_ nestedList: [NestedInteger]) {
        for nest in nestedList {
            var temp = self.analysisNestedList(nest)
            for value in temp {
                nestedArr.append(value)
            }
        }
    }
    
    func next() -> Int {
        if (count < nestedArr.count) {
            return nestedArr[count]
        }
        
        return -1
    }
    
    func hasNext() -> Bool {
        count += 1
        if (count < nestedArr.count) {
            return true
        } else {
            return false
        }
    }
}

/**
 * Your NestedIterator object will be instantiated and called as such:
 * let obj = NestedIterator(nestedList)
 * let ret_1: Int = obj.next()
 * let ret_2: Bool = obj.hasNext()
 */