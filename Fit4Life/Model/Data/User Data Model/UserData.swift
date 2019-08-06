//
//  UserData.swift
//  Fit4Life
//
//  Created by Alexandr on 19.07.2018.
//  Copyright © 2018 Alex. All rights reserved.
//

import Foundation

class UserData {

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

    convenience init() {
        self.init(date: "Not set",
                  height: "Not set",
                  weight: "Not set",
                  chest: "Not set",
                  waist: "Not set",
                  neck: "Not set",
                  bicRight: "Not set",
                  bicLeft: "Not set",
                  hipRight: "Not set",
                  hipLeft: "Not set",
                  gender: "Not set")
    }

    var description: String {
        return "date: \(date); height: \(height); weight: \(weight); chest: \(chest); waist: \(waist); neck: \(neck); bicRight: \(bicRight); bicLeft: \(bicLeft); hipRight: \(hipRight); hipLeft: \(hipLeft); manWoman: \(gender)"
    }
}
