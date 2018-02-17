//: Playground - noun: a place where people can play

import UIKit

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
