import UIKit
import Darwin

//printing an output to the console
print("Hello world")

//Simple Values, let=constant and var=variable
var myVariable = 42
myVariable = 50
let myConstant = 42

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70

//Practice: Create a constant with an explicit type of Float and a value of 4.
let explicitFloat: Float = 4


//String conversion, concatination

let label = "The width is "
let width = 94
let widthLabel = label + String(width)


//Include values into strings
let apples = 3
let pears = 5

let appleSummary = "I have \(apples) apples in my hand"
let pearSummary = "I have \(pears) apples in my hand"


//Practice: Use \() to include a floating-point calculation in a string and to include someone’s name greeting.

let floatingPoint: Float = 4
let stringLine = "The value of the float is \(floatingPoint)"


//Quotations
let quotation = """
I said "I have \(apples)."
And then I said "I have \(pears)"
"""

//arrays and dictionaries

var shoppingList = ["catfish", "water"]
//change element with index 1
shoppingList[1] = "bottle of water"
//add elements in an array
shoppingList.append("blue paint")
print(shoppingList)

var occupations = [
    "Malcom":"Captain",
    "Kaylee":"Mechanic",
]
occupations["Jane"] = "Public Relations"


//Print out the elements in an array
for elements in occupations {
    print(elements)
}

//create an empty array or dictionary
let emptyArray: [String] = []
let emptyDictionary: [String: Float] = [:]





//Control Flow, if/else
let individualScores = [75, 43, 103, 87, 12]
var teamScores = 0

for score in individualScores {
    if score > 50 {
        teamScores += 3
    } else {
        teamScores += 1
    }
}
print(teamScores)


// if and let, together if the values are missing
var optionalString: String?
print(optionalString == nil)

var optionalName: String? = "Armir Halimi"
var greeting = "Hello!"

if let name = optionalName {
    greeting = "Hello, \(name)"
}


//Practice: Change optionalName to nil. What greeting do you get? Add an else clause that sets a different greeting if optionalName is nil.
var someName: String? = nil
var greetings = "Hello!"
if let name = someName {
    greeting = "Hello, \(name)"
} else {
    print("someName is nil")
}


// Another way to handle optional values is to provide a default value using the ?? operator. If the optional value is missing, the default value is used instead.
let nickname: String? = nil
let fullName: String? = "Armir Halimi"
let informalGreeting = "Hi \(nickname ?? fullName)"



// Switch
let vegetable = "red pepper"

switch vegetable {
case "celery":
    print("Add some raisins")
case "cucumber","watercress":
    print("That would make a good sandwich")
case let x where x.hasSuffix("pepper"):
    print("Is it spicy \(x)?")
default:
    ("Everything tastes good in soup!!")
}


// for-in to iterate over items in a dictionary
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

var largest = 0
for (i, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            print(i)
        }
    }
}
print(largest)


// while loops
var n = 2
while n < 100 {
    n *= 2
}
print(n)


// Function and closures
func greet(person: String, day: String) -> Any {
    return "Hello \(person), today is \(day)."
}
greet(person:"Armir", day: "Monday")


func greet1(_ person: String, _ onday: String) -> String {
    return "Hello \(person), today is \(onday)."
}
greet1("Armir","Tuesday")


// use a tuple, compound value,

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
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
print(statistics.sum)
print(statistics.2)


// function can be nested
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()


// Objects and classes
class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape witch \(numberOfSides) sides."
    }
}

var shape = Shape()
shape.numberOfSides = 8
var shapeDescription = shape.simpleDescription()


//add an intializer

class namedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String){
        self.name = name
    }
    
    func simpleDescription1() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

//Practice: Make another subclass of NamedShape called Circle that takes a radius and a name as arguments to its initializer. Implement an area() and a simpleDescription() method on the Circle class.


class Circle {
    var radius: Double
    
    init(radius: Double, name: String) {
        self.radius = radius
    }
    
    func area() -> Double {
        pass
    }
}
//Callback is a mechanism
