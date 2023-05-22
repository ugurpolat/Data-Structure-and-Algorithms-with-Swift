import UIKit


/*
    Stacks
    
    Last-in first-out (LIFO)
    Push and Pop are O(1) operations
 */


class Stack<T> {
    private var array:[T] = []
    
    func push(_ item: T){
        array.append(item)
    }
    
    func pop() -> T? {
        array.popLast()
    }
    
    func peek() -> T? {
        array.last
    }
    
    var isEmpty: Bool {
        array.isEmpty
    }
    
    var count:Int {
        array.count
    }
}

struct StackStruct<T> {
    fileprivate var array = [T]()
    
    mutating func push (_ item: T) {
        array.append(item)
    }
    
    mutating func pop()-> T? {
        array.popLast()
    }
    
    var peek: T? {
        array.last
    }
    
    var isEmpty: Bool {
        array.isEmpty
    }
    
    var count: Int {
        array.count
    }
    
}

/*
    Queue First-in first-out
    
    enqueue O(1) dequeue O(n)
    
 */

class Queue<T> {
    private var array: [T] = []
    
    func enqueue(_ item: T){
        array.append(item)
    }
    
    func dequeue()-> T? {
        if isEmpty {
            return nil
        } else {
            return array.removeFirst()
        }
    }
    
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    var count: Int {
        return array.count
    }
    
    func peek()-> T? {
        return array.first
    }
}

struct QueueStruct<T> {
    private var array: [T] = []
    
    mutating func enqueue(_ item: T) {
        array.append(item)
    }
    
    mutating func dequeue()-> T? {
        if isEmpty {
            return nil
        } else {
            return array.removeFirst()
        }
    }
    
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    var count: Int {
        return array.count
    }
    
    func peek() ->T? {
        return array.first
    }
}


