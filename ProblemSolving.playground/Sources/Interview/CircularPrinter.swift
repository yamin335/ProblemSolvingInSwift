import Foundation

/** `Problem:` A company has invented a new type of printing technology called a circular printer
 that looks like a circle containing all English capital  letters `A` through `Z` in sequence where
 `A` and `Z` are adjacent to each other. The printer has a pointer that is initially at `A` Moving from any
 character to any adjacent character takes `1 second`. It can move in either direction. Given a string
 of letters, what is the minimum time needed to print the string?
 
 (NOTE: Assume that printing does not take any time. Only consider the time it takes for the pointer to move.)
 Examples:
 `1. Given S = "BZAR", Time required: 1+2+1+9 = 13.`
 `2. Given S = "YZAIB", Time required: 2+1+1+8+7 = 19.`
 `3. Given S = "VWR", Time required: 5+1+5 = 11.`
 `4. Given S = "CPDIE", Time required: 2+13+12+5+4 = 36.`
 */

/// `Solution:`

func minPrintTime(text: String) -> Int {
    var printTime = 0
    let base: Int = Int(Character("A").asciiValue!) - 1
    var ptrPosition: Int = Int(Character("A").asciiValue!) - base
    let circleLength: Int = Int(Character("Z").asciiValue!) - base
    
    for letter in text {
        let letterPosition: Int = Int(letter.asciiValue!) - base
        print("Dst: \(letterPosition)")
        print("Ptr: \(ptrPosition)")
        let cwDistance: Int = if ptrPosition < letterPosition {
            letterPosition - ptrPosition
        } else {
            (circleLength - ptrPosition) + letterPosition
        }
        
        print("cw: \(cwDistance)")
        
        let acwDistance: Int = if ptrPosition < letterPosition {
            ptrPosition + (circleLength - letterPosition)
        } else {
            (ptrPosition - letterPosition)
        }
        
        print("acw: \(acwDistance)")
        
        ptrPosition = letterPosition
        
        print("Pointer is now at: \(Character(UnicodeScalar(ptrPosition)!))")
        
        printTime += min(cwDistance, acwDistance)
    }
    return printTime
}

//print(minPrintTime(text: "BZAR")) // Prints 13
//print(minPrintTime(text: "YZAIB")) // Prints 19
//print(minPrintTime(text: "VWR")) // Prints 11
//print(minPrintTime(text: "CPDIE")) // Prints 36
