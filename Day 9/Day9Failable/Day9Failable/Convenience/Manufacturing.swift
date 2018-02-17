//
//  Manufacturing.swift
//  Day9Failable
//
//  Created by Pulkit Kumar on 2018-02-08.
//  Copyright © 2018 pulkitkumar. All rights reserved.
//

import Foundation

class Manufacturing {
    var name: String
    
    //DESIGNATED INITIALIZER
    init(name: String) {
        self.name = name
    }
    
    //In this we can skip the parameters in the initializer
    convenience init() {
        self.init(name: "[Unknown]")
    }
}
