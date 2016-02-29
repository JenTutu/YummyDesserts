//
//  Food.swift
//  YummyDesserts
//
//  Created by work on 2/28/16.
//  Copyright (c) 2016 work. All rights reserved.
//

import Foundation

class Food {
    
    var imageName = ""
    var description = ""
    var moreInfo = ""
    
    init(imageName: String, description: String, moreInfo: String) {
        self.imageName = imageName
        self.description = description
        self.moreInfo = moreInfo
    }
}