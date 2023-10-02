struct Stack<T> {
    private var data: [T] = []
    
    mutating func pop() -> T? {
        data.popLast()
    }
    
    mutating func push(item: T) {
        data.append(item)
    }
    
    func peek() -> T? {
        data.last
    }
    
    func isEmpty() -> Bool {
        data.isEmpty
    }
    
    func isNotEmpty() -> Bool {
        !data.isEmpty
    }
}
