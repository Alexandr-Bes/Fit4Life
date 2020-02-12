//
//  User+CoreDataProperties.swift
//  Fit4Life
//
//  Created by Alexandr on 13.02.2020.
//  Copyright © 2020 Alex. All rights reserved.
//

import Foundation
import CoreData

extension User {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "Measurement")
    }

    @NSManaged var bicLeft: String?
    @NSManaged var bicRight: String?
    @NSManaged var chest: String?
    // TODO: - Change to Date
    @NSManaged var date: String?
    @NSManaged var height: String?
    @NSManaged var hipLeft: String?
    @NSManaged var hipRight: String?
    @NSManaged var neck: String?
    @NSManaged var waist: String?
    @NSManaged var weight: String?

}
