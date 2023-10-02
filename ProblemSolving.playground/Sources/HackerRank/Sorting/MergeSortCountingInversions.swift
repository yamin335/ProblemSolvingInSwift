func merge(arr: inout [Int], tempArr: inout [Int], start: Int, mid: Int, end: Int) -> Int {
    var i = start
    var j = mid
    var k = start
    var swapCount = 0
    
    while i <= mid - 1 && j <= end {
        if arr[i] <= arr[j] {
            tempArr[k] = arr[i]
            i += 1
        } else {
            tempArr[k] = arr[j]
            swapCount += mid - i
            j += 1
        }
        k += 1
    }
    
    while i <= mid - 1 {
        tempArr[k] = arr[i]
        i += 1; k += 1
    }
    
    while j <= end {
        tempArr[k] = arr[j]
        j += 1; k += 1
    }
    
    i = start
    while i <= end {
        arr[i] = tempArr[i]
        i += 1
    }
    return swapCount
}

func doMergeSort(arr: inout [Int], tempArr: inout [Int], start: Int, end: Int) -> Int {
    var swapCount = 0
    if start < end {
        let mid = (start + end) / 2
        swapCount = doMergeSort(arr: &arr, tempArr: &tempArr, start: start, end: mid)
        swapCount += doMergeSort(arr: &arr, tempArr: &tempArr, start: mid + 1, end: end)
        swapCount += merge(arr: &arr, tempArr: &tempArr, start: start, mid: mid + 1, end: end)
    }
    return swapCount
}

func countInversions(arr: [Int]) -> Int {
    var inputArr = arr
    var tempArr = arr
    return doMergeSort(arr: &inputArr, tempArr: &tempArr, start: 0, end: inputArr.count - 1)
}

//print(countInversions(arr: [2, 1, 3, 1, 2]))
