//
//  Preference.swift
//  Day9Failable
//
//  Created by Pulkit Kumar on 2018-02-08.
//  Copyright © 2018 pulkitkumar. All rights reserved.
//

import Foundation

class Preference: Vehicle {
    var prefer = false
    var description: String {
        var output = "Do you prefer \(noOfWheels) wheel vehicle of \(name) manufacturer ? "
        output += prefer ? "✔️" : "✘"
        return output
    }
}
