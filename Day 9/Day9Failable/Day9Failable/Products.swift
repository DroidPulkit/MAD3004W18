//
//  Products.swift
//  Day9Failable
//
//  Created by Pulkit Kumar on 2018-02-08.
//  Copyright © 2018 pulkitkumar. All rights reserved.
//

import Foundation

class Products {
    let name: String
    
    //This is the failable initializer
    init?(name: String) {
        if name.isEmpty {
            return nil
        }
        self.name = name
    }
}
