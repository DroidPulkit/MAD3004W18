//
//  main.swift
//  MAD_Protocols_Extension
//
//  Created by Pulkit Kumar on 2018-02-16.
//  Copyright © 2018 pulkitkumar. All rights reserved.
//

import Foundation

var obj1 = TestA()

obj1.n1 = 20
obj1.display()
obj1.displayValue()

//Alternate way to display values using protocol
var obj2 : IDisplay = TestA()
obj2.display()

//Type casting the instance of class
obj2 = obj1 as TestA
obj2.display()

//Creating object of class B
var objB = TestB()
objB.n1 = 30
objB.n2 = 40
objB.display()
objB.displayValue()

var obj3 = objB as TestA
obj3.display()

//var objArith = Arithmetic(n1: 20, n2: 30)
//objArith.calculate()

var operators = Operation(n1: 60, n2: 20)
operators.oper = "+"
operators.calculate()
operators.oper = "-"
operators.calculate()
operators.oper = "/"
operators.calculate()
operators.oper = "*"
operators.calculate()


//*******************Extensions**********************//
let oneInch = 25.4.mm
print("One inch is \(oneInch) meters")

let threeFeet = 3.ft
print("Three feet is \(threeFeet) meters")  // Prints "Three feet is 0.914399970739201 meters"

let aMarathon = 42.km + 195.m
print("A marathon is \(aMarathon) meters long") // Prints "A marathon is 42195.0 meters long"


var ext = "Hello"
print(ext.length)
print(ext.vowels)
print(ext.consonants)
print(ext.contains(s: "el"))

//Task Day 7
var primeNo = Int()
print(primeNo.isPrime(num: 5))

