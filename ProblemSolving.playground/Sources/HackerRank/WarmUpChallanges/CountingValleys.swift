func countingValleys(steps: Int, path: String) -> Int {
    // Write your code here
    var counter = 0
    var lastStep = 0
    var presentStep = 0
    
    for step in path {
        lastStep = presentStep
        if step == "U" {
            presentStep += 1
        } else {
            presentStep -= 1
        }
        
        if lastStep == -1 && presentStep == 0 {
            counter += 1
        }
    }
    
    return counter
}

//countingValleys(steps: 8, path: "UDDDUDUU")
