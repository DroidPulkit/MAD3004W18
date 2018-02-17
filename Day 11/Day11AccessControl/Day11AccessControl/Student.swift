//
//  Student.swift
//  Day11AccessControl
//
//  Created by Pulkit Kumar on 2018-02-12.
//  Copyright © 2018 pulkitkumar. All rights reserved.
//

import Foundation

private class Student {
    private var sname: String?
    
    init() {
        self.sname = "Student Name"
    }
    
    func setStudentName(sname: String) {
        self.sname = sname
    }
    
    func getStudentName() -> String{
        return self.sname!
    }
    
    private func display() {
        print("I am a private method of student class")
    }
    
    func display(message: String) {
        print("Hello, \(message)")
    }
}

private class FullTime: Student {
    var subject: String?
    
    override init() {
        self.subject = "Fulltime Subject"
    }
    
    private func setProject(subject: String){
        self.subject = subject
    }
    
    fileprivate func display() {
        print("I am a method of full time class")
        super.display(message: "FILE PRIVATE")
    }
    
    
}
