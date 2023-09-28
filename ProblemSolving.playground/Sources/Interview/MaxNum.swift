import Foundation

/** `Problem:` Write a function solution that, given an integer N, returns the maximum possible value obtained by
 inserting one '5' digit inside the decimal representation of integer N.
 Examples:
 `1. Given N = 268, the function should return 5268.`
 `2. Given N = 670, the function should return 6750.`
 `3. Given N = 0, the function should return 50.`
 `4. Given N = -999, the function should return -5999.`
 Assume that:
 - N is an integer within the range [-8,000..8,000].
 In your solution, focus on correctness. The performance of your solution will not be the focus of the assessment. */

/// `Solution:`

func getMax(number: Int, digit: Int) -> Int {
    if number == 0 {
        return Int("\(digit)\(number)")!
    }
    
    let charDigit: Character = Character(String(digit))
    
    if number > 0 {
        let inputStr: String = String(number)
        var maxValue: Int = Int.min
        var str = inputStr
        for (index, _) in inputStr.enumerated() {
            str = inputStr
            str.insert(charDigit, at: str.index(str.startIndex, offsetBy: index))
            maxValue = max(maxValue, Int(str)!)
        }
        return maxValue
    } else {
        let inputStr: String = String(abs(number))
        var minValue: Int = Int.max
        var str = inputStr
        for (index, _) in inputStr.enumerated() {
            str = inputStr
            str.insert(charDigit, at: str.index(str.startIndex, offsetBy: index))
            minValue = min(minValue, Int(str)!)
        }
        return Int("-\(minValue)")!
    }
}

//print(getMax(number: 268, digit: 5)) // Prints 5268
//print(getMax(number: 670, digit: 5)) // Prints 6750
//print(getMax(number: 0, digit: 5)) // Prints 50
//print(getMax(number: -999, digit: 5)) // Prints -5999
