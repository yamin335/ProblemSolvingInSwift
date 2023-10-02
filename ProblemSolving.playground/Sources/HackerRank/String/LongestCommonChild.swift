func commonChild(s1: String, s2: String) -> Int {
    let str1 = Array("@\(s1)")
    let str2 = Array("@\(s2)")
    var previous = Array(repeating: 0, count: str1.count)
    var present = Array(repeating: 0, count: str1.count)
    var maxLength = Int.min
    
    for i in 1..<str1.count {
        for j in 1..<str2.count {
            if str1[i] == str2[j] {
                present[j] = previous[j - 1] + 1
            } else {
                present[j] = max(present[j - 1], previous[j])
            }
            maxLength = max(maxLength, present[j])
        }
        previous = present
        present = Array(repeating: 0, count: str1.count)
    }
    return maxLength
}
