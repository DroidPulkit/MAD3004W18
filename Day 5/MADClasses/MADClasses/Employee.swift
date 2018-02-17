//
//  Employee.swift
//  MADClasses
//
//  Created by Pulkit Kumar on 2018-02-02.
//  Copyright © 2018 Pulkit Kumar. All rights reserved.
//

import Foundation

//This class is the parent class
class Employee{
    //Optional DataType
    var empID: Int?
    var empName: String?
    var basicPay: Double?
    
    //Constructors are called initializers in swift
    //initializers
    init(){
        self.empID = 0
        self.empName = ""
        self.basicPay = 0
    }
    
    //Constructor with parameters
    //init with parameters
    init(ID : Int, NM: String, pay: Double) {
        self.empID = ID
        self.empName = NM
        self.basicPay = pay
    }
    
    
    //If we remove the ! then it can print nil also
    func display(){
        print("Employee ID : ", self.empID!)
        print("Employee Name : ", self.empName!)
        print("Basic Pay : ", self.basicPay!)
        
    }
}
