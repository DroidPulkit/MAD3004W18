//
//  Vehicle.swift
//  Day9Failable
//
//  Created by Pulkit Kumar on 2018-02-08.
//  Copyright © 2018 pulkitkumar. All rights reserved.
//

import Foundation

class Vehicle: Manufacturing {
    var noOfWheels: Int
    
    init(name: String, noOfWheels: Int) {
        self.noOfWheels = noOfWheels
        super.init(name: name)
    }
    
    override convenience init(name: String) {
        self.init(name: name, noOfWheels: 0)
    }
    
    convenience init(){
        self.init(name: "[Unknown]", noOfWheels: 0)
    }
}
