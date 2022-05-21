class Solution {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        if amount < 0 { 
            return -1 
        }
        
	    if amount == 0 { 
            return 0 
        }
        
	    var minimums = Array(repeating: 0, count: amount + 1)
	    return findMinValue(coins, amount, &minimums)
    }

    func findMinValue(_ coins: [Int], _ amount: Int, _ minimums: inout [Int]) -> Int {
        if amount < 0 { 
            return -1 
        }
        
	    if amount == 0 { 
            return 0 
        }
         
	    if minimums[amount] != 0 { 
            return minimums[amount] 
        } 

	    var minVal = Int.max
	    for coin in coins {
		    let temp = findMinValue(coins, amount - coin, &minimums)
		    if (temp >= 0) && (minVal > temp) {
			    minVal = temp + 1
		    }
	    }
        
        if (minVal != Int.max) {
             minimums[amount] =  minVal 
        } else {
            minimums[amount] = -1
        }
        
	    return minimums[amount]
    }
}