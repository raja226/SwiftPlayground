import UIKit
import OSLog
import Foundation
var greeting = "Hello, playground"

//Print Staments :

print("Hi Kanini Playground")

debugPrint("Debug message")
let message = "Hi"

let number = 42
debugPrint("Number dubug:",number)

struct Person {
    var name:String
    var  id:Int
    
}
let person = Person(name: "Rajasekhar", id: 226)
debugPrint("Person Object:",person)
print(person)
debugPrint(#file)
debugPrint("My file:",#file, "line no:",#line, "function:",#function)

//assert(): function checks a condition during runtime. If the condition evaluates to false, it halts program execution and prints the provided message to the console.
var x = 20
assert(x > 0 , "input value must be greater than 0")

//Variable and constant ;
var name = "Rajasekhar gogula"
print(name)
name = "Var gogula"
print(name)

let firstname = "Let Ggogula"
debugPrint(firstname)
//Let is the constant and immutalble cont change the value of the property.
//firstname = "test"

var age :Int
age = 10
age  = Int(22.0)

print(age)

//Strings and Collections :

//Multiline string: """ --------"""

var address = """
1-38,CIT ,6th Cross street ,CA
600035.
"""

//var address1 = "
//1-38,CIT  ,6th Cross street ,Banglore
//600035."
print(address)

//Uni code :
let smileyEmoji = "\u{1F60A}"

print(smileyEmoji)

//Mutiline vs Extended delimiters:

address = "124 Oak st. \n Kavali,CA"

print(address)

address = #"GOGULA RAJASEKHAR ST. \nIND"#

print(address)

//String Concatenation
print("-----------------------------")

var mysentace = "we are plan to go for the coffee in"

mysentace += " Iam Chennai office"

print(mysentace)

print("-----------------------------")

//String to iterate :

for char in mysentace {
    
    print(char)
}
print("-----------------------------")

//Single Character :

let singlecharacter: Character = "A"

let arrayofCharacters:[Character] = ["A","B","C","D","E"]
print(arrayofCharacters)
print("--------------Concatenate the Character in string---------------")

//Concatenate the Character in string

mysentace.append("?")

print(mysentace)

print("----Insert the additional text at the specified position---------------")

var longString = "This is a long string."
let additionalText = " with additional text "

let insertionIndex = 10


// Insert the additional text at the specified position
longString.insert(contentsOf: additionalText, at: longString.index(longString.startIndex, offsetBy: insertionIndex))

print(longString)//This is a long string with additional text.

print("--------------What is the String Interpolation of string---------------")
let animacount = 5
print("there are \(animacount) animals in the park")


let name1 = "John"
print(#"Hello, \(name1)! How are you today?"#)

//________________date formatt++++++++++++++++++++++++++++++
let dateString = "2024-06-17T00:00:00"
let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"

if let date = dateFormatter.date(from: dateString) {
    // Now 'date' contains the parsed date
    // You can format it to your desired format
    dateFormatter.dateFormat = "MMMM dd, yyyy 'at' HH:mm"
    let formattedDate = dateFormatter.string(from: date)
    print(formattedDate) // Output: "January 17, 2024 at 00:00"
} else {
    print("Failed to parse the date string")
}

//____________________________Optionals____________________
//A representation of a value that may or may not have value
/*
 Int ? -> There may be an integer value or nill
 String? -> there maybe an integer Value or nil
 Bool? -> there maybe a boolean value or nill
 ->it prevents runtime errors better and hepls with development .
 
 Optional chnaing : Student?.name
 Force UnWrapping : !
 Conditional UNwrapping
 if let name = student.name
 {
 }
 ->Nill-coalescing operator ??
 ->Shor-circuit evaluation
 */
var yourName:String?

// Conditional Unwrapping
yourName = "Gogula"
if let namecheck = yourName
{
    print("Methode called")

    print("name = \(namecheck)")
}
methodenameGuard()


func methodenameGuard() {
    guard let value = yourName  else {
        return
    }
    print("Hello, \(yourName!)!")

}

//Nill Coalsed

let nillcoaleased = yourName?.count ?? 0
print(nillcoaleased)

//Closures :

/*
 Closure: self - contained block of functionality
 -Passed around and used in code
 -Capture and stores constancts/valairable from the context
 
 */

var namesArray = [30,300,12,18,1,5]
print(namesArray)

namesArray.sort { s1, s2 in
    return s1 > s2
}

print(namesArray)

print(namesArray.sorted(by: >))

//Making the Custum Error By using NSError [network Error ]
let errorobj = NSError(domain: "network Error", code: 226, userInfo: ["Test" : "Man Made Error"])
print(errorobj)
//Clouser types :
/*
 Trainling clouser
 
 */

//String indices :

var content  = "North America"
let startindex = content.startIndex
print("startindex : \(startindex)")
print("startindexContent : \(content[startindex])")


let endindex = content.endIndex
print("end index : \(endindex)")
//print("EndindexContent : \(content[endindex-1])")
let beforeindex = content.index(before: endindex)
print("beforeindex Content : \(content[beforeindex])")

let offsetIndex = content.index(startindex, offsetBy: 4)

print("offsetIndex Content : \(content[offsetIndex])")
print("++++++++++++++Iterate over continent using indices+++++++++++++++++")

for index in content.indices {
    print("indices :\(content[index])")
}

print("---------------------------------")

print("++++++++Insert character at the end of contient string")
content.insert(":", at: content.endIndex)
print("\(content)")

print("++++++++remove character at the end of contient string")
content.remove(at: content.index(before: content.endIndex))
print("\(content)")

print("---------------------------------")

//String comparision
print("++++++++String comparision++++++++")

var lashuName = "Kavi"
var kaviName = "Kavi"

if lashuName == kaviName {
    print(kaviName)

}
if lashuName != kaviName {
    print(lashuName)
}

print("---------------------------------")

//Prefix ,suffix check
print("++++++++Prefix ,suffix check++++++++\n")


var apDistricts = [ "Royal Tirupathi","royal Kadapa","Royal Anathapur","Nellore kostha","amaravathi kostha" ,"telangana"]

for districts in apDistricts {
    
    if districts.lowercased().hasPrefix("Royal".lowercased()) {
        print("\(districts) has the prefix of Royal")
        
    }else if districts.lowercased().hasSuffix("kostha".lowercased()) {
        print("\(districts) has the suffex of kostha")

    }else
    {
        print("\(districts)")

    }
    
}
print("---------------------------------")

//Collection:
/*
 A container contains different objects .
 ->Arrays
 ->Sets
 ->Dictionaries
 ->generic Collection
 
 */
//Array : ordered collection of objects of the same type ->[element],same value can be be reapeated multiple times.

var citites :Array<String> =  []
var districts :[String] = []
var mycities = [String]()

citites.append("Chennai")
citites.append("Thiruvallure")

print("\(citites)")

for item in citites {
    print(item)
}

districts.append("test1")
districts.append("test2")

print(districts)

//districts = []
print(districts.count)

var street = Array( repeating: "Gogula", count: 10)
print(street)

var allresultArray = citites + districts + street

print(allresultArray)

var vegistable = ["Tamoto","cucumber","raw banana","potato"]

print(vegistable)

vegistable.append("brijal")

vegistable += ["watermelon","bottlegurd"]
print(vegistable)
vegistable[0] = "rajasekhar"

print(vegistable)
if let value = vegistable.first
{
    print(value)

}

vegistable[2...4] = ["3veg","4veg","5veg"]

print(vegistable)

vegistable.insert("Apple", at: 0)

print(vegistable)

let removeElement = vegistable.remove(at: 0)
print(removeElement)
print(vegistable)
//Iteration
for (index, vegistableItem) in vegistable.enumerated()
{
    print("index =\(index), vegetable = \(vegistableItem)")
}

//Sets :

/*
 unordered collection of unique values/objects.
 -type of objects should be hashable
 -Set<Element>
 -operations: intersection,union,symmetricDifference,subtracting
 */

var sports = Set<String>()

print(sports)

sports.insert("ball")
sports.insert("cricket ball")
sports.insert("valley ball")
sports.insert("foot ball")
sports.insert("zot ball")

print(sports)
print(sports.sorted())
print(sports.min())
print(sports.max())

let oddNumbers: Set<Int> = [1,3,5,7,9]
let evenNumbers: Set<Int> = [2,4,6,8,10]
let unionSet = oddNumbers.union(evenNumbers)
print("Union set = \(unionSet)")
print("Union set = \(unionSet.sorted())")
let intractionSet = oddNumbers.intersection(evenNumbers)
print("intractionSet set = \(intractionSet)")


let substrationset = oddNumbers.subtracting(evenNumbers)
print("substrationset set = \(substrationset)")

//Dictionary :

/*
 -Unorder collection of key value pairs
 */
var stundentidName: Dictionary<Int,String> = [:]
stundentidName[1] = "Rajasekhar"
stundentidName[2] = "gogula"
stundentidName[3] = "Manohar"
print(stundentidName)

var zipcodeDict : [Int:String] = [:]
zipcodeDict = [101: "Mango", 201:"Intdhumathi", 301: "Lovely"]
print(zipcodeDict)
if let oldvalue = zipcodeDict.updateValue("Raja", forKey: 101)
{
    print(oldvalue)
}
print(zipcodeDict)

//Dict iteration :

for (key ,value) in stundentidName {
    print("key = \(key) and Value = \(value)")
}

for key in stundentidName.keys {
    print("key = \(key)")

}

for value in stundentidName.values {
    print("values = \(value)")

}

//Control flows :

//for loop :

let colors = ["orange","red","yellow","blue"]

for c in colors {
    print("c =\(c)")
}

for index in 1..<10 {
    print(index)
}

let airportCodes = ["YUL":"Montreal", "SFO":" san"]

for (key,items) in airportCodes {
    print("\(airportCodes) \(items)")
}

for _ in 1...5 {
    print("Hello")
}

for i in stride(from: 0, to: 10, by: 2)
{
    print("i = \(i)")
}
print("-----------------")

for j in stride(from: 0, to: 100, by: 10)
{
    print("j = \(j)")

}

//While :
var randomNumber = 2

while (randomNumber%2  == 0)
{
    randomNumber = Int.random(in: 0...100)

    print("randomNumber = \(randomNumber)")
}

var countValue = 0

repeat {
    countValue += 1
    print(" repeate =\(countValue)")
}
while countValue < 5

    print("while loop countvalue =\(countValue)")

        
countValue = 10
if (countValue > 0) {
    
}else
{
    
}
var whilecount = 0
while (whilecount < 10)
{
    print("while= \(whilecount)")
    whilecount += 1
    
}

//Switch:
var switchvalue = 9
switch switchvalue  {
case ..<10:
    //statement
    print("case a = \(switchvalue)")
case 10..<20:
    //Statement
    print("case b = \(switchvalue)")

case 20..<50:
    //ststement
    print("case c = \(switchvalue)")

default:
    print("default = \(switchvalue)")
}

let character:Character = "A"
switch character
{
case "a":
    print("case a = \(character)")
case "b":
    print("case b = \(character)")
default:
    print("case default = \(character)")

}

//Switch statement : tuples
let coordinate = (2,0)

switch coordinate {
case (0,0):
    print("orign coordinate ")
case (_,0):
    print("x coordinate ")
case (0,_):
    print("y coordinate ")
default:
    print("any other coordinates")
}

//Value Binding :
switch coordinate {
case (0,0):
    print("orign coordinate ")
case (let x,0):
    print("x coordinate :\(x) ")
case (0,let y):
    print("y coordinate =\(y)")
default:
    print("any other coordinates")
}

//where clause

switch coordinate {
case (let x,let y) where x == y:
    print("orign coordinate ")
case (let x,let y) where x > y:
    print("x coordinate :(x > y) ")
case (let x,let y) where x < y:
    print("y coordinate =(x < y)")
default:
    print("any other coordinates")
}

//compund cases:

switch character
{
case "a" ,"A":
    print("case a = \(character)")
case "b" , "B":
    print("case b = \(character)")
default:
    print("case default = \(character)")

}

//Fallthrough: what is fallthrough
/*
 In Swift, the fallthrough keyword is used within a switch statement to transfer control from one case to the next one without exiting the switch block. When fallthrough is encountered within a case, the execution flow continues to the next case block, regardless of whether the condition in that case evaluates to true or not.
 */
switch character
{
case "a" ,"A", "C", "c":
    print("case a fallthrough= \(character)")
    fallthrough
case "b" , "B":
    print("case b = \(character)")
case  "D":
    print("case d= \(character)")
default:
    print("case default = \(character)")

}


//Functions :

//Functions,parameters,retuntype

func countNumbers(input: Int , input2: Int) -> Int {
    let result = input + input2
    return result
}
let sum = countNumbers(input: 10, input2: 5)
print(sum)
var sumresult = 0
for item in oddNumbers
{
    sumresult = sumresult + item
}

print(sumresult)

//Multiple retun values [e.g. tuples]

func findMinandMax(listofArayInt: [Int]) -> (minvalue :Int , maxValue: Int)
{
    var minValue = listofArayInt[0]
    var maxValue = listofArayInt[0]
    for number in listofArayInt {
        if number > maxValue {
            maxValue = number
        }
        if number < minValue {
            minValue = number
        }
    }
    return (minValue,maxValue)
}

let toupleresult = findMinandMax(listofArayInt: [1,2,3,4,5,6])

print(toupleresult.minvalue)
print(toupleresult.maxValue)

//Impliciti return

func multipleNumbers(num1:Int ,num2:Int) -> Int {
    num1 * num2
}

print(multipleNumbers(num1: 10, num2: 2))

//argument labels and paramenter names

func greeetPerson(with name: String) {
    
    print("hi \(name)")
}
greeetPerson(with: "Alice")
//greeetPerson(name: "Alice")


//variadic parameters
func caluculateAverage(withInput numbers: Double...) -> Double
{
    var avg = 0
    var sum:Double = 0
    var totalcount = 0
    for number in numbers
    {
        sum += number
        totalcount += 1
        
    }
    print(Double(sum / Double(totalcount)))
    return Double(sum / Double(totalcount))
}

caluculateAverage(withInput:1,2,3,4,5,6)

//in-out parameters
/*
 inout is a keyword used to specify that a parameter can be modified by a function and those modifications are reflected outside the function's scope.
 */
func greeting(person: inout String)
{
    person = "Bob"
}
var nameparam = "Rajasekhar"
print(nameparam)
greeting(person: &nameparam)
print(nameparam)




//Defer keyword:

sample()

func sample() {
   defer {
       print("One")
   }
    defer {
        print("two")
    }
    defer {
        print("trhree")
    }
   do {
       print("txt")
   }
}

//Decorator patter:
/*
The decorator pattern is a structural design pattern used in software development to dynamically add new functionality to an object without altering its structure.
 
 It allows behavior to be added or removed from individual objects at runtime, providing greater flexibility than subclassing.
 
 In iOS Swift, the decorator pattern can be implemented using a combination of protocols, classes, and inheritance. Here's a simplified example to illustrate how it works:
 
 */

//Protocal:

protocol Component {
    func operation () -> String
}

//Claass

// ConcreteComponent implements the Component protocol
class ConcreteComponent: Component {
    func operation() -> String {
        return "ConcreteComponent"
    }
}

// Base class for decorators, conforms to the Component protocol
class Decorator: Component {
    let component: Component
    
    init(component: Component) {
        self.component = component
    }
    
    func operation() -> String {
        return component.operation()
    }
}

// ConcreteDecoratorA adds additional behavior to the Component
class ConcreteDecoratorA: Decorator {
    
    override func operation() -> String {
        return "ConcreteDecoratorA(" + super.operation() + ")"
    }

}

// ConcreteDecoratorB adds different behavior to the Component
class ConcreteDecoratorB: Decorator {
    
    override func operation() -> String {
        return "ConcreteDecoratorB(" + super.operation() + ")"
    }
}

//Usage

let component = ConcreteComponent()
component.operation()

print(component.operation())

let componentA = ConcreteDecoratorA(component: component)
componentA.operation()
print(componentA.operation())

let componentB = ConcreteDecoratorB(component: componentA)
componentB.operation()
print(componentB.operation())


//Class init() vs Convenice init()
class PersonClass {
    var name:String
    var age : Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
  
}

extension PersonClass {
    convenience init(name:String) {
        self.init(name: name, age: 0 ) //Default value provided for comman value to all .
    }
}
//Creating the instance of designted init()

var personintObj = PersonClass(name: "Kanini", age: 33)

debugPrint("Name:\(personintObj.name) and Age = \(personintObj.age)")

//Creating the Instace of convenience init()

var personObj = PersonClass(name: "Gogula")

debugPrint("Name:\(personObj.name) and Age = \(personObj.age)")


//Type Alias:

/*
 typealias is used to give an alternative name to an existing type.
 
 */

public typealias CustumString = String

var data :CustumString = "Gogula"

print(data)

//Enum :

enum Errortypes
{
    case jsonError
    case ApiError
    
}
var error: Errortypes = .ApiError

switch error
{
case .ApiError:
    
    print("ApiError")
case .jsonError:
    print("jsonError")
}

//infix operator
infix operator ***: MultiplicationPrecedence

infix operator +++: AdditionPrecedence

func +++(value1:Int, value2:Int) -> Int
{
   return value1 + value2
}

let result =   5  +++ 3
print(result)

func ***(value1:Int, value2:Int) -> Int
{
   return value1 * value2
}

let mutlipleresult =   5  *** 3
print(mutlipleresult)



//class with same instance :

class MyPerson {
    func value() -> Self {
        return self
    }
}
var obj = MyPerson()
print(obj)
var obj2 = obj.value()
print(obj2)


//Caseiterable

enum Direction: CaseIterable
{
    case north
    case east
    case west
    case south
}

print(Direction.allCases)
//@discardableResult

/*
 @discardableResult attribute is used to indicate that the return value of a function can be ignored by the caller without generating a warning.
 */





//

/*
 @objc dynamic and @Persisted are both property wrappers used in RealmSwift to define properties of Realm model objects. However, they have some differences in their usage and behavior:

-@objc dynamic is used to mark properties as dynamic, which allows Realm to observe and manage changes to these properties at runtime.
 
 -@Persisted is a property wrapper introduced in newer versions of RealmSwift (such as RealmSwift 10.0.0 and above).
 It serves a similar purpose to @objc dynamic in that it marks properties as persistent and managed by Realm, but it provides additional features and benefits:
 */
