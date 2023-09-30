func minimumBribes(q: [Int]) -> Void {
    var minBribe = 0
    var i = q.count - 1
    while i >= 0 {
        if (q[i] - 1) - i > 2 {
            print("Too chaotic")
            return
        } else {
            var j = max(q[i] - 2, 0)
            while j < i {
                if q[j] > q[i] {
                    minBribe += 1
                }
                j += 1
            }
        }
        i -= 1
    }
    print(minBribe)
}
