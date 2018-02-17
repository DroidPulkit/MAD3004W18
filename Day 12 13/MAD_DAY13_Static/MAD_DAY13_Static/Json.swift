//
//  Json.swift
//  MAD_DAY13_Static
//
//  Created by MacStudent on 2018-02-14.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Tutorial: Codable{
    let title: String
    let author: String
    let editor: String
    let type: String
    let publishDate: Date
    
    init(title: String, author: String, editor: String, type: String, publishDate: Date){
        self.title = title
        self.author = author
        self.editor = editor
        self.type = type
        self.publishDate = publishDate
    }
}
