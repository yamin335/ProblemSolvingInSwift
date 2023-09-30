func dynamicArray(n: Int, queries: [[Int]]) -> [Int] {
    var lastAns = 0
    var arr: [[Int]] = Array(repeating: [], count: n)
    var result: [Int] = []
    
    for query in queries {
        let index = (query[1] ^ lastAns) % n
        if index < arr.count  {
            if query[0] == 1 {
                arr[index].append(query[2])
            } else {
                let indexY = (query[2] % arr[index].count)
                lastAns = arr[index][indexY]
                result.append(lastAns)
            }
        }
    }
    return result
}

//print(dynamicArray(n: 2, queries: [[1, 0, 5],
//                                   [1, 1, 7],
//                                   [1, 0, 3],
//                                   [2, 1, 0],
//                                   [2, 1, 1]
//                                  ]))
