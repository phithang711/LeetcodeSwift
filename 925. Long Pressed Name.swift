class Solution {
    func isLongPressedName(_ name: String, _ typed: String) -> Bool {
        var nameCount : [(char: String, count: Int)] = []
        var typedCount : [(char: String, count: Int)] = []
        
        for char in name {
            if nameCount.count == 0 {
                nameCount.append((String(char), 1))
                continue
            }
            
            if (String(char) == nameCount[nameCount.count - 1].char) {
                nameCount[nameCount.count - 1].count += 1
                continue
            }
            
            nameCount.append((String(char), 1))
        }
        
        for char in typed {
            if typedCount.count == 0 {
                typedCount.append((String(char), 1))
                continue
            }
            
            if (String(char) == typedCount[typedCount.count - 1].char) {
                typedCount[typedCount.count - 1].count += 1
                continue
            }
            
            typedCount.append((String(char), 1))
        }
        
        if (typedCount.count != nameCount.count) {
            return false
        }
        
        for i in 0..<nameCount.count {
            if (nameCount[i].char == typedCount[i].char) && (typedCount[i].count >= nameCount[i].count) {
                continue
            }
            
            return false
        }
        
        return true
    }
}