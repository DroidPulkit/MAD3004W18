//: Playground - noun: a place where people can play

import UIKit

func factorial(_ N: Int) -> Int
{
    if N == 1
    {
        return 1
    } else {
        return N * factorial(N - 1)
    }
}
let x = 10
let result = factorial(x)
print("The factorial of \(x) is \(result)")
