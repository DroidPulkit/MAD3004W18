//
//  Caritem.swift
//  Day9Failable
//
//  Created by Pulkit Kumar on 2018-02-08.
//  Copyright © 2018 pulkitkumar. All rights reserved.
//

import Foundation

class CarItem: Products {
    let quantity: Int
    
    init?(name: String, quantity: Int) {
        if quantity < 1 {
            //return nil
            self.quantity = 1
        } else {
        self.quantity = quantity
        }
        super.init(name: name)
    }
}

//person class -> fname, lname, address
//licence class -> age, location,
// licence age < 16 not eligible no object created

