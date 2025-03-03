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

//A Swift Tour  Chapter 1 => pag 4

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
//Use  \() to include a floating-point calculation in a string and to include someone's name in a greeting 

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