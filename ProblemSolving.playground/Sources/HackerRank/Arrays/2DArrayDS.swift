func hourglassSum(arr: [[Int]]) -> Int {
    var row = 0
    var maxHourGlass = Int.min

    while row + 2 < arr.count {
        var col = 0
        while col + 2 < arr.count {
            let sum = arr[row + 0][col + 0] + arr[row + 0][col + 1] + arr[row + 0][col + 2]
                      + arr[row + 1][col + 1]
                      + arr[row + 2][col + 0] + arr[row + 2][col + 1] + arr[row + 2][col + 2]
            maxHourGlass = max(maxHourGlass, sum)
            col += 1
        }
        row += 1
    }
    return maxHourGlass
}

//print(hourglassSum(arr: [[-9, -9, -9,  1, 1, 1],
//                         [0,  -9,  0,  4, 3, 2],
//                         [-9, -9, -9,  1, 2, 3],
//                         [0,   0,  8,  6, 6, 0],
//                         [0,   0,  0, -2, 0, 0],
//                         [0,   0,  1,  2, 4, 0]
//                        ]))
