//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print(str)

//This is the multiline string
let strOne = """
This is the first line
This is the second line
This is the one more line
blah blah blah blha
"""

print (strOne)

var mood = "sad"
//Unicode string
var happy = "\u{1F601}"
//Empty checker
if mood.isEmpty {
    print("Cheer up dude like wth!!")
} else {
    print("Oh I get it you are \(mood)")
}

print(happy)

//Concatinating new data to the previous data
mood += " cheeful joyful"

//we can define string like this also
var firstNAme = String()
firstNAme = "Pulkit"
print(firstNAme)

//If we apply for i on stirng it will print each char in the string
for i in firstNAme{
    print(i)
}

//Use of append
let initial: Character = "P"
firstNAme.append(initial)

print (firstNAme)

//A wat way to count the no of char
print ("First Name is \(firstNAme) which is \(firstNAme.count) characters long.")

//Other method to append
firstNAme = firstNAme + "abc"
print (firstNAme)

//INDEXES
//This will print the first char in the stirng
print("start Index:", firstNAme[firstNAme.startIndex])
//This below end index is not working becaue endIndex always gives NULL
//print("end Index:", firstNAme[firstNAme.endIndex])
//This will print 2nd last char
print("before end Index:", firstNAme[firstNAme.index(before: firstNAme.endIndex)])
//This will print 2nd char from start
print("after start Index:", firstNAme[firstNAme.index(after: firstNAme.startIndex)])
//This will print 5th char from start
print("5th character:", firstNAme[firstNAme.index(firstNAme.startIndex, offsetBy: 4)])

//This will print the 3rd char from last
print("3th character from last:", firstNAme[firstNAme.index(firstNAme.endIndex, offsetBy: -3)])

//We can also do it this way to write the index in the variable and then latter use it to find value
var idx = firstNAme.index(firstNAme.startIndex, offsetBy: 3)
print ("fourth character:", firstNAme[idx])

var language = "Swift"
print("language : ", language)

//Append a char at the some point of the string
//Remember it is .insert
language.insert("!", at: language.endIndex)
print("language : ", language)

//If we are trying to insert string in a string we use contentsOf
language.insert(contentsOf: " Java", at: language.endIndex)
print("language : ", language)

//Add string of data at a particular place
language.insert(contentsOf: " is nice than ", at: language.index(language.startIndex, offsetBy: 6))
print("language : ", language)

//To remove one char in the string
language.remove(at: language.index(before: language.endIndex))
print("language : ", language)

//To remove a range of char in the string
let range = language.startIndex..<language.endIndex
language.removeSubrange(range)
print("language remove subrange:", language)

let greetings = "Happy Holidays!"
//This below will find the index of specific char and give the result, if it is not found, then endIndex will be printed
let index = greetings.index(of: " ") ?? greetings.endIndex
let start = greetings[..<index]
let newGreet = String(start)

print("sub string: ", newGreet)

//TASK 1
//Question: Print your name in acsending order and then is desc order individually
//Answer
var myName = "Pulkit"

var countOfName = myName.count

for i in stride(from: 0, to: countOfName, by: 1)
{
    let dataToPrint = myName[myName.index(myName.startIndex, offsetBy: i )]
    print (dataToPrint)
}
print("\n Name printed in opposite order \n")
for i in stride(from: 0, to: countOfName, by: 1)
{
    let dataToPrint2 = myName[myName.index(myName.endIndex, offsetBy: (-i - 1) )]
    print (dataToPrint2)
}


//Task 1 ends

print("String in uppercase : ",newGreet.uppercased())

if (newGreet == newGreet.uppercased()){
    print("Equal")
}
else{
    print("Not equal")
}

var grade : String?
grade = "A"
let finalGrade = grade ?? "F"

if (finalGrade.isEmpty){
    
    print("Not graded yet")
}
else{
    print("Grade : ",finalGrade)
}
