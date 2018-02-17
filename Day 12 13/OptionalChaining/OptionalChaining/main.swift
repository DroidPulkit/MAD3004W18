//
//  main.swift
//  OptionalChaining
//
//  Created by Jigisha Patel on 2018-02-12.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

let jk = Person()
//default residence is nil due to optional
//print("\(jk.residence)")

//runtime error sue to forced unwrapping using !
//print("\(jk.residence!.numberOfRooms)")

//jk.residence = Residence()
if let roomCount = jk.residence?.numberOfRooms {
    print("The residence has \(roomCount) room(s).")
} else {
    print("Unable to retrieve the number of rooms.")
}

let someAddress = Address()
someAddress.buildingNumber = "29"
someAddress.street = "Acacia Road"
jk.residence?.address = someAddress

print("The residence address is \(jk.residence?.address)")

//function calling using optional chaining
if jk.residence?.printNumberOfRooms() != nil {
    print("It was possible to print the number of rooms.")
} else {
    print("It was not possible to print the number of rooms.")
}

//subscripts and optional chaining
if let firstRoomName = jk.residence?[0].name {
    print("The first room name is \(firstRoomName).")
} else {
    print("Unable to retrieve the first room name.")
}

jk.residence?[0] = Room(name: "Bathroom")

//Instance with values
let jkHome = Residence()
jkHome.rooms.append(Room(name: "Living Room"))
jkHome.rooms.append(Room(name: "Kitchen"))
jk.residence = jkHome

if let firstRoomName = jk.residence?[0].name {
    print("The first room name is \(firstRoomName).")
} else {
    print("Unable to retrieve the first room name.")
}

let jkAddress = Address()
jkAddress.buildingName = "The Larches"
jkAddress.street = "Laurel Street"
jk.residence?.address = jkAddress

//multiple level chaining
if let jkStreet = jk.residence?.address?.street {
    print("JK's street name is \(jkStreet).")
} else {
    print("Unable to retrieve the address.")
}

//chaining methods with optional return value
if let buildingIdentifier = jk.residence?.address?.buildingIdentifier() {
    print("JK's building identifier is \(buildingIdentifier).")
}

if let beginsWithThe =
    jk.residence?.address?.buildingIdentifier()?.hasPrefix("The") {
    if beginsWithThe {
        print("JK's building identifier begins with \"The\".")
    } else {
        print("JK's building identifier does not begin with \"The\".")
    }
}
