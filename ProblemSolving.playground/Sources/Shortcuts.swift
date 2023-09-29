// String OPERATIONS:

let str: String = "Hello World!"

let reversedStr: String = String(str.reversed())

let count = str.count

let firstCharacter: Character = str.first! // Character

let lastCharacter = str.last // String

let fifthIndex = str.index(str.startIndex, offsetBy: 4)

let fifthCharacter = str[fifthIndex]

let subStringIndexRange = str.index(str.startIndex, offsetBy: 6)...str.index(str.endIndex, offsetBy: -2)

let lastWord = str[subStringIndexRange]

// Character OPERATIONS:

let char: Character = "9"
let intValueOfChar: Int = Int(String(char))!
let charFromInt: Character = Character(String(5))
let charCapitalA: Character = "A"
let charSmallerA: Character = "a"
let unicodeValueOfCapitalA: Int = Int(charCapitalA.asciiValue!)
let unicodeValueOfSmallerA: Int = Int(charSmallerA.asciiValue!)
let charRepresentationOfAnAscii: Character = Character(UnicodeScalar(unicodeValueOfCapitalA)!)
let stringRepresentationOfAnAscii: String = String(UnicodeScalar(unicodeValueOfSmallerA)!)


// Array OPERATIONS:

func arrayOperations() {
    let strArray: [Character] = Array(str)
    print("\(strArray)\n")

    let ninthCharacter = strArray[8]
    print("\(ninthCharacter)\n")
    let sortedArray = strArray.sorted()
    print("\(sortedArray)\n")
    let reversedArray: [Character] = sortedArray.reversed()
    print("\(reversedArray)\n")
    let ascendingOrdered = reversedArray.sorted(by: <)
    print("\(ascendingOrdered)\n")
    let descendingOrdered = reversedArray.sorted(by: >)
    print("\(descendingOrdered)\n")
}
