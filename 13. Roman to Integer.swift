class Solution {
    func romanToInt(_ s: String) -> Int {
        let s = " " + s + " "
        let arr = Array(s)
        var count = 0
        for i in 1..<arr.count - 1 {
            if arr[i] == "I" {
                if (arr[i+1] != "V") && (arr[i+1] != "X") {
                    count += 1
                }
            }
            
            if arr[i] == "V" {
                if (arr[i-1] == "I") {
                    count += 4
                } else {
                    count += 5
                }
            }
            
            if arr[i] == "X" {
                if (arr[i-1] == "I") {
                    count += 9
                } else if (arr[i+1] != "L") && (arr[i+1] != "C") {
                    count += 10
                }
            }
            
            if arr[i] == "L" {
                if (arr[i-1] == "X") {
                    count += 40
                } else {
                    count += 50
                }
            }
            
            if arr[i] == "C" {
                if (arr[i-1] == "X") {
                    count += 90
                } else if (arr[i+1] != "D") && (arr[i+1] != "M") {
                    count += 100
                }
            }
            
            if arr[i] == "D" {
                if (arr[i-1] == "C") {
                    count += 400
                } else {
                    count += 500
                }
            }
            
            if arr[i] == "M" {
                if (arr[i-1] == "C") {
                    count += 900
                } else {
                    count += 1000
                }
            }
        }
        
        return count
    }
}