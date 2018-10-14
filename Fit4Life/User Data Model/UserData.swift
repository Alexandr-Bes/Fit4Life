//
//  UserData.swift
//  Fit4Life
//
//  Created by Alexandr on 19.07.2018.
//  Copyright © 2018 Alex. All rights reserved.
//

import Foundation

class UserData {

    var date: String?
    var height: Double?
    var weight: Double?
    var chest: Double?
    var waist: Double?
    var neck: Double?
    var bicRight: Double?
    var bicLeft: Double?
    var hipRight: Double?
    var hipLeft: Double?
    var manWoman: Bool

    init(date: String,
         height: Double,
         weight: Double,
         chest: Double?,
         waist: Double?,
         neck: Double?,
         bicRight: Double?,
         bicLeft: Double?,
         hipRight: Double?,
         hipLeft: Double?,
         manWoman: Bool) {

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
        self.manWoman = manWoman
    }

    var description: String {
        return "date: \(date ?? "No set"); height: \(height ?? 0.0); weight: \(weight ?? 0.0); chest: \(chest ?? 0.0); waist: \(waist ?? 0.0); neck: \(neck ?? 0.0); bicRight: \(bicRight ?? 0.0); bicLeft: \(bicLeft ?? 0.0); hipRight: \(hipRight ?? 0.0); hipLeft: \(hipLeft ?? 0.0); manWoman: \(manWoman)"
    }
}
