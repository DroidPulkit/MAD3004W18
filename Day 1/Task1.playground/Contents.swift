//: Playground - noun: a place where people can play

import UIKit

var test:Int = 11
var tableof = 5
var fact: Int = 1
var n: Int = test + 1
if test < 10{
    for index in 1...10{
        
        print("\(tableof) X \(index) = \(index * tableof)")
    }
}
else{
    for i in 1..<n{
        fact = fact * i
    }
    print("factorial of ", test,"is: ", fact)
}
