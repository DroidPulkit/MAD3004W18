//
//  main.swift
//  Singleton
//
//  Created by MacStudent on 2018-02-16.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

//print("Hello, World!")


//'MySingleton' initializer is inaccessible due to 'private' protection level
//var s1 = MySingleton()
//print(MySingleton.instant.getMyName());

//var obj1 = MySingleton()
//MySingleton.instanr.getMyName();

print(MySingleton.getInstant().getMyName())

var obj2 = MySingleton.getInstant()
print(obj2.getMyName())

var obj3 = MySingleton.getInstant()
print(obj3.getMyName())
