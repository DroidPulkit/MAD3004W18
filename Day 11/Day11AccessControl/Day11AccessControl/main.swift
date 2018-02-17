//
//  main.swift
//  Day11AccessControl
//
//  Created by Pulkit Kumar on 2018-02-12.
//  Copyright © 2018 pulkitkumar. All rights reserved.
//

import Foundation

var obj = ExtendPartTime()
obj.setStudentName(sname: "blah")

class T: ExtendPartTime {
    override init() {
        super.init()
        print("Display T")
    }
}

var t1 = T()
t1.sname = 
