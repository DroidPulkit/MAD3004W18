//: Playground - noun: a place where people can play

import UIKit

//Defining a variable
var str = "Hello, playground"
var name = "Pulkit"
//printing the variable
print (str)
print(2+3)
//Adding variable to print along with str
print ("Hi, \(name), I hope you are doing fine. Moreover I wanted to say \(str)")
//USe of separtor in print
print ("1", "2", "3", "4", "5", "6", separator: "..")
print("a", "b", "C", separator: "\n")
//Use of terminator in print
print("a", "b", "C", separator: "\n", terminator: "d \n")
//printing variable after string 2nd method
print("YO sup ", str)

//How to explicitly add data type to variable name
var a:Int = 20
print("a = ", a)
var b = "😎"

print ("See this hero \(b)")

let pi = 3.14;

print ("value of pi = \(pi)" )

//This is used to show variable datatype i.e. the data can be nil in the below myNum
let myNum:Int?
myNum = 10

if myNum != nil {
    print("myNum : ", myNum)
}
else {
    print("myNum is Nil")
}

//Converting one datatype to another
let n1 = "123 blag"
let n2:Int?

n2 = Int(n1)

if n2 != nil {
    print("Converted Number", n2!)
} else {
    print("Converted Number is nil")
}

//For loop
for i in 1...5 {
    print ("i = ", i)
}

for i in 1..<5 {
    print ("i =", i )
}

let languages:[String]
languages = ["English", "Spanish", "French"]
//print array in different line
for i in languages{
    print("language : " , i)
}
//PRint in one line only
for i in languages{
    print(i, terminator: " ")
}

let n3:[Int]
n3 = [1,2,3,4,5,6,7,8,9,10]

//find sum of different number
var temp = 0
for i in n3 {
    temp = temp + i
}
print("\n")
print (temp)

var answer:Int = 1;

for _ in 1...5 {
    answer *= 5;
}
print("answer = ", answer)

var Interval:Int = 5;

for i in stride(from: 0, to: 50, by: Interval) {
    print(i," ", terminator: " ")
}

//Using While loop
print("\n")
var jump = 1
while (jump < 5)
{
    print("\(jump)")
    jump += 1
}

//Using repeat while loop
repeat {
    print("Repeat ", jump)
    jump = jump + 2
}while (jump<=10)

//task
//value if less than 10 then display table of 5 or else factorial of 5

//SWitch statements

var num1 = 10

switch num1 {
case 100:
    print("value of num1 is 100")
case 10,15 :
    print("value of num1 is either 10 or 15")
case 5:
    print("value of num1 is 5")
default:
    print("We do not know the value of num1")
}

let approximateCount = 62
let countedThings = "moons orbiting Saturn"
let naturalCount: String
switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "Several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings).")
