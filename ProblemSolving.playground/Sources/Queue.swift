struct Queue<T> {
    private var data: [T] = []
    
    mutating func poll() -> T? {
        data.popLast()
    }
    
    mutating func add(item: T) {
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
