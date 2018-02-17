//: Playground - noun: a place where people can play

import UIKit

//Day 3 Class Task Dictionary inside Dictionary
var person = [String : AnyObject]()
let address = [String : String]()

person["firstName"] = "Sonal" as AnyObject
person["lstName"] = "Verma" as AnyObject
person["age"] = Int(50) as AnyObject
person["address"] = ["street" : "265 Yorkland Blvd", "area" : "North York", "postalCode" : "M1H1Y1"] as AnyObject
person["total amount"] = Double(1000) as AnyObject
print("person: ",person)
