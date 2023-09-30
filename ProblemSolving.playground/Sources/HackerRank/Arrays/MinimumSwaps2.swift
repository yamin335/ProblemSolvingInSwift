func minimumSwaps(arr: [Int]) -> Int {
    var minSwap = 0
    var sorted = Array(repeating: 0, count: 1) + arr
    for i in 1...arr.count {
        var element = sorted[i]
        
        if sorted[i] == i {
            continue
        }
        
        while element != i {
            let temp = sorted[element]
            sorted[element] = element
            minSwap += 1
            element = temp
        }
    }
    return minSwap
}

//print(minimumSwaps(arr: [1, 3, 5, 2, 4, 6, 7,])) // Prints 3
