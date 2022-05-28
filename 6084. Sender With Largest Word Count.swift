class Solution {
    func largestWordCount(_ messages: [String], _ senders: [String]) -> String {
        var dict : [String: Int] = [:]
        
        for i in 0..<messages.count {
            let space = messages[i].components(separatedBy: " ")
            if dict[senders[i]] == nil {
                dict[senders[i]] = space.count
            } else {
                dict[senders[i]] = dict[senders[i]]! + space.count
            }
        }
        
        var senderMax = ""
        var max = Int.min
        for sender in senders {
            if max < dict[sender]! {
                max = dict[sender]!
                senderMax = sender
                continue
            }
            
            if max == dict[sender]! {
                if senderMax < sender {
                    senderMax = sender
                }
                continue
            }
        }
        
        return senderMax
    }
}