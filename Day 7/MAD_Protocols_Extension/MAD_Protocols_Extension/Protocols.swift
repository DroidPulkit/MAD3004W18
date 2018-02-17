//
//  Protocols.swift
//  MAD_3004_Day7_Protocols
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

//First protocol
protocol IDisplay{
    func display()        //do not provide body of function while using protocol
}


//another protocol to display the value of parameter in class
protocol IDisplayValue{
    var n1: Int {get set} //setting property here to retrive and set the parameter
    func displayValue()
}

protocol ICalculate{
    var n1: Int? {get set}
    var n2: Int? {get set}
    
    init(n1: Int, n2: Int)
}

