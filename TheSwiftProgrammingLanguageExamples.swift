//The Swift Programming Language 5.7 Examples

/*  Important concepts of Swift => pag. 1 - 3

“-Variables are always initialized before use.
-Array indices are checked for out-of-bounds errors.
-Integers are checked for overflow.
-Optionals ensure that nil values are handled explicitly.
-Memory is managed automatically.
-Error handling allows controlled recovery from unexpected failures.”

Fragmento de
The Swift Programming Language (Swift 5.7)
Apple Inc.
https://books.apple.com/mx/book/the-swift-programming-language-swift-5-7/id881256329
Es posible que este material esté protegido por copyright.

The following functions are only available in Swift 5.7 that is included in Xcode 14:

“-Functions that return an opaque type require the Swift 5.1 runtime.
-The try? expression doesn’t introduce an extra level of optionality to expressions that already return optionals.
-Large integer literal initialization expressions are inferred to be of the correct integer type. For example, UInt64(0xffff_ffff_ffff_ffff) evaluates to the correct value rather than overflowing.”

Fragmento de
The Swift Programming Language (Swift 5.7)
Apple Inc.
https://books.apple.com/mx/book/the-swift-programming-language-swift-5-7/id881256329
Es posible que este material esté protegido por copyright.

“Concurrency requires Swift 5.7 or later, and a version of the Swift standard library that provides the corresponding concurrency types. On Apple platforms, set a deployment target of at least iOS 15, macOS 12, tvOS 15, or watchOS 8.0.
A target written in Swift 5.7 can depend on a target that’s written in Swift 4.2 or Swift 4, and vice versa. This means, if you have a large project that’s divided into multiple frameworks, you can migrate your code from Swift 4 to Swift 5.7 one framework at a time.”

Fragmento de
The Swift Programming Language (Swift 5.7)
Apple Inc.
https://books.apple.com/mx/book/the-swift-programming-language-swift-5-7/id881256329
Es posible que este material esté protegido por copyright.

*/

//A Swift Tour  Chapter 1 => pag 4 - 

print("Hello, world!")
// Prints "Hello, world!"

//Variables (var) can contain a different later, while constants (let) receive only one value

var myVariable: Int = 42
myVariable = 50
let myConstant: Int = 42

//A constant or variable can tell it's type of value explicit by writing the type it is, if the type of the value is no expressed explicit, it's value should be declared implicit.

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70

//Experiment
//Create a constant with an explicit type of Float and a value of 4

let numberFour: Int = 4
print(numberFour)

//Values canot be explicit converted to another type, an instance of the value needed has to be applied to the value to convert

let label: String = "The width is "
let width: Int = 94
let widthLabel: String = label + String(width)
print(widthLabel)

//An easier way to convert values or use a value in a string is using \(var) in the string
let apples: Int = 3
let oranges: Int = 5
let appleSummary: String = "I have \(apples) apples."
let fruitSummary: String = "I have \(apples + oranges) pieces of fruit."
print(appleSummary)
print(fruitSummary)

//Experiment 
//Use  \() to include a floating-point calculation in a string and to include someone's namnewGreeting 

let name: String = "Jorge"
let age: Float = 100.0 - 76.7
let greeting: String = "Hi \(name) that is \(age) years old"
print(greeting)

//Is possible to use three quotation marks (""") for strings that take up multiple lines.

let quotation: String = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges) pieces of fruit."
"""
print(quotation)

//Arrays and Dictionaries are made with brackets [] and their index can be accessed by using brackets

var fruits: [String] = ["strawberries", "limes", "tangerlines"]
fruits[1] = "grapes"

print(fruits)

var occupations: [String : String] = [
    "Malcom" : "Captain",
    "Kaylee" : "Mechanic"
]
occupations["Jayne"] = "Public Relatios"
print(occupations)

fruits.append("blueberries")
print(fruits)

let emptyArray: [String] = []
let emptyDictionary: [String:Float] = [:]
fruits = []
occupations = [:]
print(fruits,occupations)

//Control Flow for if, for - in

let individualScores: [Int] = [75, 43, 103, 87, 12]
var teamScore = 0
for score: Int in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

//Optional values
var optionalString: String? = "Hello"
print(optionalString == nil)
//Prints "false"

var optionalName: String? = nil // or = "John Appleseed"
var newGreeting: String = "Hello"
if let name: String = optionalName {
    newGreeting = "Hello, \(name)"
} else {
    newGreeting = "Hello, no name was entered"
}
print(newGreeting)

//Default value
let nickname: String? = nil // or = "Jorge Montoya"
let fullName: String = "John Appleseed"
let informalGreeting: String = "Hi \(nickname ?? fullName)"
print(informalGreeting)

if let nickname: String {
    print("Hey, \(nickname)")
}

//Switch sentence
let vegetable: String = "red pepper"
switch vegetable {
    case "celery":
        print("Add some raisins and make ants on a log.")
    case "cucumber", "watercress":
        print("That would make a good tea sandwich.")
    case let veggie where veggie.hasSuffix("pepper"): //let 'let name' is a copy of the let that is used to use the switch
        print("Is it a spicy \(veggie)?")
    default:
        print("Everything tastes good in soup")
}

//for-in in a dictionary
let interestingNumbers: [String : [Int]] = [
    "Prime" : [2, 3, 5, 7, 11, 13],
    "Fibonacci" : [1, 1, 2, 3, 5, 8],
    "Square" : [1, 4, 9, 16, 25]
]
var largest: Int = 0
for (name, numbers) in interestingNumbers { // The _ refers to each String value in the dictionary and ignores the String value to only consider the Integer value
    print(name + " is being checked")
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)

//While conditions
//If a while condition is at the end of the code, the code wwill run at least once

var n: Int = 2
while n < 2 { // or n < 100 to have the same result on both examples
    n *= 2
}
print(n)

var m: Int = 2
repeat {
    m *= 2
} while m < 2 // or n < 100 to have the same result on both examples
print(m)

//Range of index with for-in
var total: Int = 0
for i: Int in 0 ..< 4 { //This example does not include the last value, and 0 ... 4 includes the last value
    total += i
}
print(total)

//Functions and Closures
//func return a value and that type of value is declares with "->"
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
print(greet(person: "Jorge", day: "May 4th"))

//Functions need the name of the parameter as default, is possible to write "_" before declare the parameter name to ignore it, but the second parameter needs "on" to indicate which parameters will be used when you call the function
func newGreet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
print(newGreet("John", on: "Wednesday"))

//Tuple to make a compound value
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int){
    var min: Int = scores[0]
    var max: Int = scores[0]
    var sum: Int = 0

    for score: Int in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    return (min, max, sum)
}

let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.min); print(statistics.0)
print(statistics.max); print(statistics.1)
print(statistics.sum); print(statistics.2)

//Functions can be nested, this means the functions declared in another function has access to variables that are outer the function

func returnFifteen() -> Int {
    var y: Int = 10
    func add() -> Void {
        y += 5
    }
    add()
    return y
}

let num15: Int = returnFifteen()
print(num15)

//Functions are first-class types that can return another function as its value
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment: ((Int) -> Int) = makeIncrementer()
print(increment(7))

//A function can take another function as one of its arguments
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item: Int in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers: [Int] = [20, 19, 7, 12]
print(hasAnyMatches(list: numbers, condition: lessThanTen))

//The code in a closure has access to things available in the scope where the closure was created, for this reason you can create a function only with "{}" by surrounding the code with it

print(numbers.map({(number: Int) -> Int in 
    if number % 2 != 0{
        return number
    } else {
        return 0
    }
}))

print(numbers.map({number in 3 * number}))
let sortedNumbers = numbers.sorted { $0 < $1}
print(sortedNumbers)

//Objects and Classes