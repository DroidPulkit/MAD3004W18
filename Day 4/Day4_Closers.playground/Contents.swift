//: Playground - noun: a place where people can play

import UIKit

//closers in swift

//sorted closure
var months = [4,3,1,6,5,2]
print(months.sorted())

//This function is a closure, where we have arguments as _ because they are optional for the closure to work.
func reverse (_ s1: Int, _ s2: Int) -> Bool {
    return s1 > s2
}

//Here is an example for closure, where the func reverse we are not passing value in the parameters, it is picking on its own from the months
var reversedMonths = months.sorted(by: reverse)
print("reversedMonth", reversedMonths)
/*
func increasing (_ s1: Int, _ s2: Int) -> Bool {
    return s1 < s2
}
var increasingMonths = months.sorted(by: increasing)
print("increasing months : ", increasingMonths)
*/
//closure expression syntax
/*
 (parameters) -> return type in a statement
*/

//Example of inline closure
//Closure means block of code, where it can execute

var reverseClosure = months.sorted(by: {
    (_ s1: Int, _ s2: Int) -> Bool in
        return s1 > s2
})

print("reverseClosure", reverseClosure)

//infering parameter type form context
var inferTypes = months.sorted(by: {
 //s1, s2 in return s1 < s2
 (s1, s2) in s1 < s2 //implicit return
})

print("inferTypes : ", inferTypes)

//shorthand argument name
print("shorthand argument : ", months.sorted(by: {$0 < $1}))

//operator method
print("operator methods : ", months.sorted(by: <))


var three = [1,3,4,5,6,8,9,12,15]
print("three : ", three)

//We can filter an array with any logic we want
//This thing is also closure
//filtering the odd numbers
var modThree = three.filter({ $0 % 3 == 0})
print("modThree : ", modThree)

//filtering the even numbers
var modThreeEven = three.filter({ $0 % 2 == 0})
print("modThreeEven : ", modThreeEven)

//nested func closure
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    
    return incrementer
}

//This below is a function here
//Remember we haven't defined the data type here
let incrementByTen = makeIncrementer(forIncrement: 10)

//RunningTotal is saved in memory, it is not 0 everytime we call incrementByTen
print("first call : ", incrementByTen()) //10
print("second call : ", incrementByTen()) //20
print("third call : ", incrementByTen()) //30

//This is the new instance of makeIncrementor and thus the above value is not retained
let incrementBySeven = makeIncrementer(forIncrement: 7)
print("increment by seven_1 : ", incrementBySeven()) //7
print("increment by seven_2 : ", incrementBySeven()) //14

//Now it retained the value from the incrementByTen
print("fourth call : ", incrementByTen()) //40

//Here we are passing reference of one instance to another, so it can retian the value
let incrementBySevenAgain = incrementBySeven
print("increment by seven 3 : ", incrementBySevenAgain())


//AutoClosures
//Basically delay the closure, for some time
var errorList = [404, 414, 402, 431, 455, 440]
print("Total errors: ", errorList.count)

//Now this closure will only work if I call debugger()
//I am delaying the closure to be used in future
let debugger = { errorList.remove(at: 0)}
print("Total errors : ", errorList.count)

//Now the closure is working
print("Now solving \(debugger())")
print("Total errors : ", errorList.count)
print("ErrorList : ", errorList)

func solve(error debugger: @autoclosure () -> Int) {
    print("Now solving \(debugger())!")
}

solve(error: errorList.remove(at: 0))
print("ErrorList : ", errorList)


/*
 read about escaping closures & trailing closures
 */



