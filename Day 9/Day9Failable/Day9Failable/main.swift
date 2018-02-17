//
//  main.swift
//  Day9Failable
//
//  Created by Pulkit Kumar on 2018-02-08.
//  Copyright © 2018 pulkitkumar. All rights reserved.
//

import Foundation

var laptop = Products(name: "Laptop")
if let machine = laptop {
    print(machine.name)
}

let anonymousMachine = Products(name: "")

if anonymousMachine == nil {
    print("This anonymous machine cannot be initialized,")
}

var obj1 = CarItem(name: "Figo", quantity: 2)

if let caritem = obj1 {
    print("Name : \(caritem.name), Quantity : \(caritem.quantity)")
}

var obj2 = CarItem(name: "Audi", quantity: 0)

if let caritem = obj2 {
    print("Name : \(caritem.name), Quantity : \(caritem.quantity)")
} else {
    print("Sorry it cannot be initialized")
}


//Task

var pulkit = Licence(fname: "Pulkit", lname: "Kumar", address: "Toronto", age: 12, location: "Downtown")

if let working = pulkit {
    print("Yeah the licence was created at \(working.location)")
} else {
    print("Sorry the age is quite low to make licence")
}

var caio = Licence(fname: "caio", lname: "unic", address: "Toronto", age: 25, location: "Lawerence East")

if let working = caio {
    print("Yeah the licence was created at \(working.location)")
} else {
    print("Sorry the age is quite low to make licence")
}


//CONVENIENCE INIT
//Manufacturing
let objManu = Manufacturing()

print(objManu.name)

//Vechicle

print("\n")
print("Printing vehicle with 2 contructors")
let objVehicle1 = Vehicle(name: "Jeep", noOfWheels: 4)
print("This Vehicle name is \(objVehicle1.name) and it has \(objVehicle1.noOfWheels) wheels")

print("\n")
print("Printing vehicle with 1 contructors")
let objVehicle2 = Vehicle(name: "Audi")
print("This Vehicle name is \(objVehicle2.name) and it has \(objVehicle2.noOfWheels) wheels")

print("\n")
print("Printing vehicle with 0 contructors")
let objVehicle3 = Vehicle()
print("This Vehicle name is \(objVehicle3.name) and it has \(objVehicle3.noOfWheels) wheels")


let preference = Preference()
print(preference.description)

//Subscript
//Subscript is used to make array like index calling facilities in struct and classes
print("\n")
print("SUBSCRIPTS")
let threeTimesTable = TimesTable(multiplier: 3)
print("Six times by three is \(threeTimesTable[6])")


print("\n")
var matrix = Matrix(rows: 2, columns: 2)
print("\(matrix.grid)")
matrix[0, 1] = 1.5
matrix[1, 0] = 3.2

print("\(matrix.grid)")

