func repeatedString(s: String, n: Int) -> Int {
    var count = 0
    var aCount = 0
    for char in s {
        if char == "a" {
            aCount += 1
        }
    }
    count += (n / s.count) * aCount
    let reminder = n % s.count
    for i in 0..<reminder {
        if s[s.index(s.startIndex, offsetBy: i)] == "a" {
            count += 1
        }
    }
    return count
}

//print(repeatedString(s: "abcac", n: 10))
