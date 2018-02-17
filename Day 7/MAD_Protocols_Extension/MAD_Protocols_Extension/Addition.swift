//
//  Addition.swift
//  MAD_3004_Day7_Protocols
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Operation: Arithmetic{
    var oper: Character?
    
//    init(oper: Character){
//        self.oper = oper
//    }
    
    required init(n1: Int, n2: Int){
        super.init(n1: n1, n2: n2)
    }
    
//Class Task to perform different operation
    func calculate(){
        print("Calling Function")
        switch (oper){
        case "+"?:
            let result = self.n1! + self.n2!
            print("Addition is = \(result)")
        case "*"?:
            let result = self.n1! * self.n2!
            print("Multiplication is = \(result)")
        case "/"?:
            let result = self.n1! / self.n2!
            print("Division is = \(result)")
        case "-"?:
            let result = self.n1! - self.n2!
            print("Subtraction is = \(result)")
        default:
            print("Not a valid operation")
        }
    }
}
