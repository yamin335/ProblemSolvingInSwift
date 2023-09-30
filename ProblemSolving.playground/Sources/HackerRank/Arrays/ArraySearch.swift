func findMatch(numbers: [Int], value: Int) -> Bool {
    if numbers.isEmpty {
        return false
    }
    
    if numbers.count == 1 {
        return numbers.first == value
    }
    
    var start = 0
    var end = numbers.count - 1
    
    while start < end {
        let mid = (start + end) / 2
        if numbers[mid] < value {
            start = mid + 1
        } else {
            end = mid
        }
        
        if numbers[start] == value || numbers[mid] == value || numbers [end] == value {
            return true
        }
    }
    return false
}

//print(findMatch(numbers: [-5, -4], value: -4)) // Prints true
