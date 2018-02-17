//
//  Address.swift
//  OptionalChaining
//
//  Created by Jigisha Patel on 2018-02-12.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    func buildingIdentifier() -> String? {
        if let buildingNumber = buildingNumber, let street = street {
            return "\(buildingNumber) \(street)"
        } else if buildingName != nil {
            return buildingName
        } else {
            return nil
        }
    }
}
