//
//  TimesTable.swift
//  Day9Failable
//
//  Created by Pulkit Kumar on 2018-02-08.
//  Copyright © 2018 pulkitkumar. All rights reserved.
//

import Foundation

struct TimesTable {
    let multiplier: Int
    
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}


