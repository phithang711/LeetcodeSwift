
class ATM {
    private var banknotesCount: [Int] = Array(repeating: 0, count: 5)
    init() {
    }
    
    func deposit(_ banknotesCount: [Int]) {
        for i in 0..<banknotesCount.count {
            self.banknotesCount[i] += banknotesCount[i]
        }
    }
    
    func withdraw(_ amount: Int) -> [Int] {
        var tempNote = banknotesCount
        var amount = amount
        
        var temp = 0
        var temp1 = 0
        var temp2 = 0
        var temp3 = 0
        var temp4 = 0
        
        while (amount != 0) {
            temp = amount / 500
            temp1 = amount / 200
            temp2 = amount / 100
            temp3 = amount / 50
            temp4 = amount / 20
            
            if (temp > 0) && (tempNote[4] != 0) {
                let min = temp < tempNote[4] ? temp : tempNote[4]
                tempNote[4] -= min
                amount -= min * 500
                continue
            }
            
            if (temp1 > 0) && (tempNote[3] != 0) {
                let min = temp1 < tempNote[3] ? temp1 : tempNote[3]
                tempNote[3] -= min
                amount -= min * 200
                continue
            } 
            
            if (temp2 > 0) && (tempNote[2] != 0) {
                let min = temp2 < tempNote[2] ? temp2 : tempNote[2]
                tempNote[2] -= min
                amount -= min * 100
                continue
            } 
            
            if (temp3 > 0) && (tempNote[1] != 0) {
                let min = temp3 < tempNote[1] ? temp3 : tempNote[1]
                tempNote[1] -= min
                amount -= min * 50
                continue
            }
            
            if (temp4 > 0) && (tempNote[0] != 0) {
                let min = temp4 < tempNote[0] ? temp4 : tempNote[0]
                tempNote[0] -= min
                amount -= min * 20
                continue
            }
            
            return [-1]
        }
        
        var result : [Int] = []
        
        for i in 0..<tempNote.count {
            result.append(banknotesCount[i] - tempNote[i])
        }
        
        banknotesCount = tempNote
        
        return result
    }
}

/**
 * Your ATM object will be instantiated and called as such:
 * let obj = ATM()
 * obj.deposit(banknotesCount)
 * let ret_2: [Int] = obj.withdraw(amount)
 */