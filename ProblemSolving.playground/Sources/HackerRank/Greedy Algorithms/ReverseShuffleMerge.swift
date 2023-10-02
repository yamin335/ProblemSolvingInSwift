func reverseShuffleMerge(s: String) -> String {
    var frequency: [Character : Int] = [:]
    var countFreq: [Character : Int] = [:]
    var stack: [Character] = []
    
    for char in s {
        if frequency[char] == nil {
            frequency[char] = 1
        } else {
            frequency[char] = frequency[char]! + 1
        }
    }
    
    for (key, value) in frequency {
        countFreq[key] = value / 2
    }
    
    var i = s.count - 1
    while i >= 0 {
        let char = s[s.index(s.startIndex, offsetBy: i)]
        frequency[char] = (frequency[char] ?? 0) - 1
        if (countFreq[char] ?? 0) < 1 {
            i -= 1
            continue
        }
        countFreq[char] = (countFreq[char] ?? 0) - 1
        
        while !stack.isEmpty && stack.last! > char
                && frequency[stack.last!]! > countFreq[stack.last!]! {
            let removedItem = stack.remove(at: stack.count - 1) // Remove top item of stack
            countFreq[removedItem] = (countFreq[removedItem] ?? 0) + 1
        }
        stack.append(char)
        i -= 1
    }
    
    var result = ""
    for char in stack {
        result = "\(result)\(char)"
    }
    return result
}

print(reverseShuffleMerge(s: "abcdefgabcdefg"))
