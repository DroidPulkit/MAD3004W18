//
//  main.swift
//  MADClasses
//
//  Created by Pulkit Kumar on 2018-02-02.
//  Copyright © 2018 Pulkit Kumar. All rights reserved.
//

import Foundation

//----------------------------------------------------------------------
//Parent class initialization
var emp1 = Employee()
emp1.empID = 1
emp1.basicPay = 5000
emp1.empName = "Pulkit"
emp1.display()


//How to constructor or init helps in swift
//If by chance we happens to print the value of which we haven't given any value till now it will print the default value and not nil
print("DEFAULT INIT EXAMPLE..............")
var initExample = Employee()
initExample.display()

//How can parameterized constructors help in swift
//We can literally enter value while initializing
print("PARAMETERIZED INIT EXAMPLE")
var parameterizedInitExample = Employee(ID: 10, NM: "Smile", pay: 10)
parameterizedInitExample.display()
print("hello")
//----------------------------------------------------------------------

//----------------------------------------------------------------------
//Child class initialization
var emp2 = PermanentEmployee()
emp2.numberOfWeeksVacation = 10
emp2.empID = 2
emp2.empName = "Caio"
emp2.basicPay = 1000
emp2.display()


//Child class initialization with default parameters
print("DEFAULT INIT EXAMPLE IN CHILD CLASS")
var childEmp2 = PermanentEmployee()
childEmp2.display()

//Child class initialization with default parameters
print("\nPARAMETERIZED INIT EXAMPLE IN CHILD CLASS")
var childEmp3 = PermanentEmployee(ID: 11, NM: "PK", Pay: 20, NWV: 12)
childEmp3.display()
//----------------------------------------------------------------------


//SWIFT Don't support multiple inheritence, but why?

//TASK - 1
//class - payroll
// finalPay: Double
//
//if numberOfVacation > 5 then finalPay = basicpay - 100

//------------------------------------------------------------------------------------------

var payroll1 = PayRoll(ID: 10, NM: "Pulkit", Pay: 1024, NWV: 10)
payroll1.display()
