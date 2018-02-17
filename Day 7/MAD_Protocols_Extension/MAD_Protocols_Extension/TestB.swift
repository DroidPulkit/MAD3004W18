//
//  TestB.swift
//  MAD_3004_Day7_Protocols
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

//Creating subclass of TestA
class TestB : TestA{
    var n2: Int?
    
   override func displayValue(){
        print("Value of n1: \(self.n2!)")
    }
    
    override func display(){
        print("Inside Class B")
        print("Value of n1: \(self.n2!)")
    }
}
