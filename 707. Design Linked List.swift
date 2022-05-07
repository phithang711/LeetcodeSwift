class MyList {
    var val: Int
    var next: MyList?
        
    init() {
        self.val = -1
    }
}

class MyLinkedList {    
    var head : MyList?
    
    var count = 0

    init() {
    }
    
    func get(_ index: Int) -> Int {
        var nodeHead = head
        if (nodeHead == nil) {
            return -1
        }
        
        for i in 0..<index {
            if (nodeHead!.next != nil) {
                nodeHead = nodeHead!.next
            } else {
                return -1
            }
        }
        
        return nodeHead!.val
    }
    
    func addAtHead(_ val: Int) {
        if (head == nil) {
            head = MyList()
            head!.val = val
        } else {
            var temp = MyList()
            temp.val = val
            temp.next = head
            head = temp
        }
    }
    
    func addAtTail(_ val: Int) {
        var nodeHead = head
        if (nodeHead == nil) {
            self.addAtHead(val)
            return
        }
        
        while (nodeHead!.next != nil) {
            nodeHead = nodeHead!.next
        }
        
        var temp = MyList()
        temp.val = val
        nodeHead!.next = temp
    }
    
    func addAtIndex(_ index: Int, _ val: Int) {
        if (index == 0) {
            self.addAtHead(val)
            return
        }
        
        var nodeHead = head

        if (nodeHead == nil) {
            return
        }
        
        for i in 0..<index - 1 {
            if (nodeHead!.next != nil) {
                nodeHead = nodeHead!.next
            } else {
                return
            }
        }
        
        var temp = MyList()
        temp.val = val
        temp.next = nodeHead!.next
        nodeHead!.next = temp
    }
    
    func deleteAtIndex(_ index: Int) {
        var nodeHead = head
        var prev = head
        
        if (nodeHead == nil) {
            return
        }
        
        if (index == 0) {
            prev = head
            head = head!.next
            prev!.next = nil
            prev = nil
            return
        }
        
        for i in 0..<index {
            if (nodeHead!.next != nil) {
                prev = nodeHead
                nodeHead = nodeHead!.next
            } else {
                return
            }
        }
        
        if (nodeHead!.next != nil) {
            prev!.next = nodeHead!.next
            nodeHead!.next = nil
            nodeHead = nil
        } else {
            prev!.next = nil
            nodeHead = nil
        }
    }
}

/**
 * Your MyLinkedList object will be instantiated and called as such:
 * let obj = MyLinkedList()
 * let ret_1: Int = obj.get(index)
 * obj.addAtHead(val)
 * obj.addAtTail(val)
 * obj.addAtIndex(index, val)
 * obj.deleteAtIndex(index)
 */