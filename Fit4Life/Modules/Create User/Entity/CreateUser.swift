//
//  CreateUser.swift
//  Fit4Life
//
//  Created by Alex Bezkopylnyi on 2/3/20.
//  Copyright © 2020 Alex. All rights reserved.
//

import Foundation
import CoreData

public class User: NSManagedObject {
    
}

struct User1 {
    
    var date: String
    var height: String
    var weight: String
    var chest: String
    var waist: String
    var neck: String
    var bicRight: String
    var bicLeft: String
    var hipRight: String
    var hipLeft: String
    var gender: String

    init(date: String,
         height: String,
         weight: String,
         chest: String,
         waist: String,
         neck: String,
         bicRight: String,
         bicLeft: String,
         hipRight: String,
         hipLeft: String,
         gender: String) {

        self.date = date
        self.height = height
        self.weight = weight
        self.chest = chest
        self.waist = waist
        self.neck = neck
        self.bicRight = bicRight
        self.bicLeft = bicLeft
        self.hipRight = hipRight
        self.hipLeft = hipLeft
        self.gender = gender
    }
}
