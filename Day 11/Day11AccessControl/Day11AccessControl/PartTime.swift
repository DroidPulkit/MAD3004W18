//
//  PartTimer.swift
//  Day11AccessControl
//
//  Created by Pulkit Kumar on 2018-02-12.
//  Copyright © 2018 pulkitkumar. All rights reserved.
//

import Foundation

class PartTime {
    var sname: String?
    fileprivate func setStudentName(sname: String){
        self.sname = sname
    }
}

internal class ExtendPartTime: PartTime {
    override internal func setStudentName(sname: String) {
        super.setStudentName(sname: sname)
    }
    
}
