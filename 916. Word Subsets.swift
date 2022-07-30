class Solution {
    func wordSubsets(_ words1: [String], _ words2: [String]) -> [String] {
        var compareDict : [Character:Int] = [:]
        
        for word in words2 {
            var tempDict = self.makeDict(word)
            for key in tempDict.keys {
                if compareDict[key] == nil {
                    compareDict[key] = tempDict[key]
                    continue
                }
                
                compareDict[key] = max(compareDict[key]!, tempDict[key]!)
            }
        }
        
        var result : [String] = []
        
        for word in words1 {
            var tempDict = self.makeDict(word)
            var check = true
            for key in compareDict.keys {
                if tempDict[key] == nil {
                    check = false
                    break
                }
                
                if tempDict[key]! < compareDict[key]! {
                    check = false
                    break
                }
            }
            
            if check == true {
                result.append(word)
            }
        }
        
        return result
    }
    
    func makeDict(_ word: String) -> [Character:Int] {
        var dict : [Character:Int] = [:]
        for char in word {
            dict[char, default: 0] += 1
        }
        
        return dict
    }
}