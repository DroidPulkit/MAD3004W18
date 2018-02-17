//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Creating an Empty Dictionary name namesOfIntegers
var namesOfIntegers = [Int: String]()

//namesOfIntegers now contains 1 key-value pair
namesOfIntegers[16] = "sixteen"
print("namesOfIntegers: \(namesOfIntegers)")
namesOfIntegers[28] = "twenty eight"
print("namesOfIntegers: \(namesOfIntegers.count) elements")
print("namesOfIntegers:",namesOfIntegers)

//namesOfIntegers is once again an empty dictionary of type [Int: String], removes all elements from dictionary
namesOfIntegers = [:]
print("namesOfIntegers:",namesOfIntegers)
print("namesOfIntegers: \(namesOfIntegers.count) elements")

//Check if namesOfIntegers is empty or not
if namesOfIntegers.isEmpty{
    print("Dictionary Is Empty")
}else{
    print(namesOfIntegers)
}

var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin", "LHR": "London Hearthrow", "AMS" : "Amsterdam"]
print("airports: \(airports)")
print("The airports dictionaary contains  \(airports.count) items")

//Modify the value having key YYZ
airports["YYZ"] = "TP International"

//Enter new key and values
airports["AMD"] = "SVP International"
airports["CSIA"] = "Chattrapati shivaji Int"

print("airports : ", airports)
print("The airports dictionaary contains  \(airports.count) items")

//Prints "The old value for DUB was Dublin."
if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("The old value for DUB was \(oldValue).")
}

// Prints "The name of the airport is AMD Airport."
if let airportName = airports["AMD"] {
    print("The name of the airport is \(airportName).")
} else {
    print("That airport is not in the airports dictionary.")
}

//Range Over is not the real airport for Mars, so delete it
airports["Mars"] = "Range Over"
print("airports : ", airports)

// Mars has now been removed from the dictionary
airports["Mars"] = nil
print("airports : ", airports)

//Prints "The removed airport's name is Dublin Airport."
if let removedValue = airports.removeValue(forKey: "DUB") {
    print("The removed airport's name is \(removedValue).")
} else {
    print("The airports dictionary does not contain a value for DUB.")
}

//Iterating Over a dictionary
for (airportCode, airportName) in airports{
    print("\(airportCode): \(airportName)")
}

//Retrieve an iterable collection of dictionarys keys and values
for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}

for airportName in airports.values {
    print("Airport name: \(airportName)")
}

//to use a dictionary’s keys or values with an API that takes an Array instance, initialize a new array with the keys or values property
let airportCodes = [String](airports.keys)
print("airportCodes is \(airportCodes)")

let airportNames = [String](airports.values)
print("airportNames is \(airportNames)")

//<KEY, VALUE> pairs
var d1: Dictionary<String, String> = ["India" : "Hindi", "Canada" : "English"]
print(d1)
print(d1.description)
print(d1["India"]!)
print(d1["Canada"]!)
print(d1["USA"])
d1["China"] = "Mandarin"
for (k,v) in d1{
    print("\(k) -> \(v)")
}

//Dictionary with any value type
var d3 = [String : AnyObject]()
d3["firstName"] = "Sonal" as AnyObject
d3["lastName"] = "Verma" as AnyObject
d3["age"] = Int(25) as AnyObject
d3["Salary"] = nil
print("d3", d3)

//Getting as a key, value pair
for (k,v) in d3{
    print("\(k) -> \(v)")
}

//Declaring Tuples
var x = (10, 20, "Verma")
print(x.0)
print(x.1)
print(x.2)

let http404Error = (404, "Not Found")
print(http404Error)

let(statusCode, statusMessage) = http404Error
print("statusCode:",statusCode)
print("statusMessage:",statusMessage)

let (codeOnly, _) = http404Error
print("codeOnly:",codeOnly)

let errorDescription = (Code:404, Message: "Not Found")
print(errorDescription.Code, errorDescription.Message)

//working with function

//Simple declaration
func add()
{
    print("I am in User Defined Function")
}

add()

func add(n1:Int, n2:Int){
    var sum : Int
    sum = n1 + n2
    print ("Sum: ",sum)
}

add(n1:10,n2:20)
//add(10, 20) //Error
//add(n2:30, n1:40) //Error

//Making parameter label optional using _
func sub(a:Int, _ b:Int)
{
    let c = a - b
    print("Sub: \(c)")
}
sub(a: 10, 20)

//Single return type
func mul(a: Int, b:Int) -> Int
{
    let c = a * b
    return c
}
var c = mul(a: 5, b: 2)
print("Mul : \(c)")

//Multi return values and define new label name
func swipe(number1 a: Int, b: Int) -> (Int, Int)
{
    //Function parameters are constant by default
//    var temp = a
//    a = b
//    b = temp
    return (b,a)
}

var (a,b) = swipe(number1: 10, b: 20)
print("a: \(a), b: \(b)")
(_, c) =  swipe(number1: 10, b: 20)
print("c : \(c)")

//inout concept
func swipe(aa: inout Double, bb: inout Double)
{
    let temp = aa
    aa = bb
    bb =  temp
}

var x1 = 8.0, y1 = 9.0
swipe(aa:&x1, bb:&y1)
//swipe(aa: &10, bb: &20) //cannot pass values directly
print("x1 : \(x1), y1: \(y1)")

//Default parameter
func simpleInterest(amount:Double, noOfYears: Double, rate:Double = 5.0) -> Double
{
    let si = amount * rate * noOfYears / 100
    return si
}

print("simple interest: \(simpleInterest(amount: 1000, noOfYears: 5))")
print("simple interest: \(simpleInterest(amount: 1000, noOfYears: 5, rate: 10))")

func simpleInterest(amount:Double, _ noOfYears: Double, _ rate:Double = 5.0) -> Double
{
    let si = amount * rate * noOfYears / 100
    return si
}
    
    print("simple interest: \(simpleInterest(amount: 1000, noOfYears: 5))")
    print("simple interest: \(simpleInterest(amount: 1000, 5, 10))")

//Variadic Paramteres
func display(n:Int...)
{
    for i in n{
        print(i)
    }
}

display(n: 1,2,3,4,5)
display(n: 10, 20, 30)

//passing array as parameter
func display (numberValues: Int, parameters:[Int]...)
{
    print("Number of Values \(numberValues)")
    for i in parameters{
        print("i: \(i)")
    }
}
var arr = [1,2,3,4,5]
display(numberValues:3, parameters:arr, arr,arr,arr)

//Sum of two array
func display(arrayList:[Int]...) -> [Int]
{
    var array1 = arrayList[0]
    var array2 = arrayList[1]
    var result = [Int]()
    
    if array1.count == array2.count
    {
        for i in 0..<array1.count
        {
            result.append(array1[i] + array2[i])
        }
    }
    return result
}
var a1 = [1,2,3,4,5]
var a2 = [10,11,12,13,14]
var a3 = [display(arrayList: a1, a2)]
print(a1)
print(a3)

//function with an optional tuple return type and return a value of nil when the array is empty:
func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
 
var array1 = [1,5,9,10,6,54,50]
var result = minMax(array: array1)
print(result)
