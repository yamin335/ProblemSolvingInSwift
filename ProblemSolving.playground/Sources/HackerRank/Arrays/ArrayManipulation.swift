func arrayManipulation(n: Int, queries: [[Int]]) -> Int {
    var arr: [Int] = Array(repeating: 0, count: n + 1)
    var maxValue = Int.min
    var sum = 0
    for i in 0..<queries.count {
        let startIndex = queries[i][0]
        let endIndex = queries[i][1] + 1
        arr[startIndex] += queries[i][2]
        if endIndex < arr.count {
            arr[endIndex] -= queries[i][2]
        }
    }
    
    for i in 1..<arr.count {
        sum += arr[i]
        maxValue = max(maxValue, sum)
    }
    
    return maxValue
}

//print(arrayManipulation(n: 10, queries: [[1, 5, 3], [4, 8, 7], [6, 9, 1]])) // Prints 10
