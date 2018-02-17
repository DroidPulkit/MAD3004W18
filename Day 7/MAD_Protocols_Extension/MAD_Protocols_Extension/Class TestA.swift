//
//  Class TestA.swift
//  MAD_3004_Day7_Protocols
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class TestA: IDisplay, IDisplayValue{
    var n1: Int = 50
    
    func displayValue(){
        print("Value of n1: \(self.n1)")
    }
    func display(){
        print("Inside class TestA")  //implement the function
    }
    
  
}
