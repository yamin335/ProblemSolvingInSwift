func sockMerchant(n: Int, ar: [Int]) -> Int {
    // Write your code here
    var socks: [Int : Int] = [:]
    var pairs: Int = 0
    
    for num in ar {
        let hasAlready = socks.keys.contains {
            $0 == num
        }
        if hasAlready {
            socks[num] = socks[num]! + 1
            if socks[num] == 2 {
                socks[num] = 0
                pairs += 1
            }
        } else {
            socks[num] = 1
        }
    }
    return pairs
}

//print(sockMerchant(n: 7, ar: [1, 2, 1, 2, 1, 3, 2]))
