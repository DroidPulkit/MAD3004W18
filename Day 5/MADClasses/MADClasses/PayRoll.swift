//
//  PayRoll.swift
//  MADClasses
//
//  Created by Pulkit Kumar on 2018-02-02.
//  Copyright © 2018 Pulkit Kumar. All rights reserved.
//

import Foundation

/*
 //This task is done in simple way
 class PayRoll: PermanentEmployee {
 var finalPay: Double?
 
 override init() {
 super.init()
 self.finalPay = 0
 
 }
 
 override init(ID: Int, NM: String, Pay: Double, NWV: Int) {
 super.init(ID: ID, NM: NM, Pay: Pay, NWV: NWV)
 self.finalPay = 0
 }
 
 func calculateFinalPay() {
 if numberOfWeeksVacation! > 5 {
 finalPay = basicPay! - 100
 print(finalPay)
 }
 }
 }
 
 print("\nFinding the final pay of the employee \n")
 var payRoll1 = PayRoll(ID: 20, NM: "abc", Pay: 1000000, NWV: 10)
 payRoll1.calculateFinalPay()
 */

//This task is done in Composite way
class PayRoll: PermanentEmployee {
    //this finalPay is computed property
    //We cannot assign a value to this variable
    // even in constructors
    var finalPay: Double{
        get{
            let vw = self.numberOfWeeksVacation!
            if vw > 5 {
                return self.basicPay! - 100
            } else {
                return self.basicPay!
            }
        }
    }
    
    override init() {
        //self.finalPay = 0
        super.init()
    }
    
    override init(ID: Int, NM: String, Pay: Double, NWV: Int) {
        //self.finalPay = 0
        super.init(ID: ID, NM: NM, Pay: Pay, NWV: NWV)
    }
    
    override func display() {
        super.display()
        print("finalPay : ", finalPay)
    }
}
