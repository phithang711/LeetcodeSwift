class Solution {
    func fullJustify(_ words: [String], _ maxWidth: Int) -> [String] {
        var tempString : [String] = []
        var resultString : [String] = []
        var length = 0
        for i in 0..<words.count - 1 {
            if (length + words[i].count <= maxWidth) {
                length += words[i].count + 1
                tempString.append(words[i])
                continue
            }
            
            resultString.append(makeString(tempString, length, maxWidth))
            tempString = []
            
            length = words[i].count + 1
            tempString.append(words[i])
        }
        
        if (length == maxWidth) || (words[words.count - 1].count + length > maxWidth) {
            resultString.append(makeString(tempString, length, maxWidth))
            tempString = []
            length = 0
        }
        
        tempString.append(words[words.count - 1])
        
        var finalString = tempString.joined(separator: " ")
        
        while (finalString.count < maxWidth) {
            finalString += " "
        }
        
        resultString.append(finalString)
        
        return resultString
    }
    
    func makeString(_ words: [String],_ length: Int, _ maxWidth: Int) -> String {
        if (words.count == 1) {
            var finalString = words[0]
            
            while (finalString.count < maxWidth) {
                finalString += " "
            }
            
            return finalString
        }
        
        var temp = maxWidth - length + words.count
        
        var spaceBetween = 0
        
        spaceBetween = temp / (words.count - 1)
        
        let words = words
        
        temp -= spaceBetween * (words.count - 1)
        
        var space = ""
        for _ in 0..<spaceBetween {
            space += " "
        }
        
        if (temp > 0) {  
            var toReturn = ""

            for i in 0..<words.count - 1 {
                if (temp > 0) {
                    toReturn += words[i] + space + " "
                    temp -= 1
                } else {
                    toReturn += words[i] + space
                }
            }
            
            return toReturn + words[words.count - 1]
        } else {
            return words.joined(separator: space)
        }
    }
}