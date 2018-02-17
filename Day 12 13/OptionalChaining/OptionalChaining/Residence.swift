//
//  Residence.swift
//  OptionalChaining
//
//  Created by Jigisha Patel on 2018-02-12.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation


//class Residence {
//    var numberOfRooms = 1
//}

class Residence {
    var rooms = [Room]()
    var numberOfRooms: Int {
        return rooms.count
    }
    subscript(i: Int) -> Room {
        get {
            return rooms[i]
        }
        set {
            rooms[i] = newValue
        }
    }
    func printNumberOfRooms() {
        print("The number of rooms is \(numberOfRooms)")
    }
    var address: Address?
}


