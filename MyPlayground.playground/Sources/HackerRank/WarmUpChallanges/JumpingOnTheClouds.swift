func jumpingOnClouds(c: [Int]) -> Int {
    // Write your code here
    var currentStep = 0
    var steps = 0
    
    while currentStep < c.count {
        var distance = 0
        if currentStep + 2 < c.count && c[currentStep + 2] != 1 {
            distance = 2
        } else {
            distance = 1
        }
        
        if currentStep + distance == c.count {return steps}
        currentStep += distance
        steps += 1
    }
    return steps
}

//print(jumpingOnClouds(c: [0, 1, 0, 0, 0, 1, 0]))
