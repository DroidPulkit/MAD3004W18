//
//  PermanentEmployee.swift
//  MADClasses
//
//  Created by Pulkit Kumar on 2018-02-02.
//  Copyright © 2018 Pulkit Kumar. All rights reserved.
//

import Foundation

//Child class incomming :)
class PermanentEmployee: Employee {
    var numberOfWeeksVacation: Int?
    
    //default constructor
    override init(){
        super.init()
        self.numberOfWeeksVacation = 0
    }
    
    //parameterized constructor
    //we are not overriding the below init because the parameters in this is 4 and in parent class init is of 3 parameters
    init(ID: Int, NM: String, Pay: Double, NWV: Int) {
        super.init(ID: ID, NM: NM, pay: Pay)
        numberOfWeeksVacation = NWV
    }
    
    //Overriding the parent class method
    override func display() {
        //This super keyword will use the method's defination from the above class
        super.display()
        print("Vacation Weeks :", numberOfWeeksVacation!)
        
    }
}
