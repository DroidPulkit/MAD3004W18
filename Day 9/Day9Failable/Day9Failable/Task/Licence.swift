//
//  Licence.swift
//  Day9Failable
//
//  Created by Pulkit Kumar on 2018-02-08.
//  Copyright © 2018 pulkitkumar. All rights reserved.
//

import Foundation

class Licence: Person {
    let age: Int
    let location: String
    
    
    init?(fname: String, lname: String, address: String, age: Int, location: String) {
        if age < 16 {
            return nil
        }
        self.age = age
        self.location = location
        super.init(fname: fname, lname: lname, address: address)
    }
}
