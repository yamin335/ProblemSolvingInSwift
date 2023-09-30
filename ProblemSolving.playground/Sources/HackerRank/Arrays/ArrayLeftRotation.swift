func rotLeft(a: [Int], d: Int) -> [Int] {
    var result: [Int] = a
    if a.count == d {
        return a
    }
    
    var rot = d
    if d > a.count {
        rot = d % a.count
    }
    
    for i in 0..<a.count {
        if i - rot < 0 {
            let index = a.count - abs(i - rot)
            result[index] = a[i]
        } else {
            result[i - rot] = a[i]
        }
    }
    
    return result
}

//print(rotLeft(a: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20], d: 10))
