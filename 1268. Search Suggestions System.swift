class Solution {
    class CheckNode {
        var dict = [Character: CheckNode]()
        var product : [String] = []
    }
    
    let root = CheckNode()
    
    func suggestedProducts(_ products: [String], _ searchWord: String) -> [[String]] {
        var products = products
        products.sort{$0 < $1}
        
        self.buildTree(products)
        
        var result : [[String]] = []
        // get list search word
        var current = root
        for char in searchWord {
            if current.dict[char] == nil {
                current.dict[char] = CheckNode()   
            }
            
            current = current.dict[char]!
            result.append(current.product)
        }
        
        return result
    }
    
    func buildTree(_ products: [String]) {
        for product in products {
            let productArr = Array(product)
            var current = root
            for char in product {
                if current.dict[char] == nil {
                    current.dict[char] = CheckNode()
                }
                    
                current = current.dict[char]!
                if current.product.count < 3 {
                    current.product.append(product)
                }   
            }
        }
    }
}