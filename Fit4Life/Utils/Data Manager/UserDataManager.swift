//
//  UserDataManager.swift
//  Fit4Life
//
//  Created by Alexandr on 13.02.2020.
//  Copyright © 2020 Alex. All rights reserved.
//

import CoreData

final class UserDataManager: CreateUserDataManagerInputProtocol {
    func retrieveUser() throws -> [User] {
        guard let managedOC = CoreDataStore.managedObjectContext else {
            throw PersistenceError.managedObjectContextNotFound
        }

        let request: NSFetchRequest<User> = NSFetchRequest(entityName: String(describing: User.self))

        return try managedOC.fetch(request)
    }

    func saveUser(bicLeft: String, bicRight: String, chest: String, date: String, height: String, hipLeft: String, hipRight: String, neck: String, waist: String, weight: String) throws {
        guard let managedOC = CoreDataStore.managedObjectContext else {
            throw PersistenceError.managedObjectContextNotFound
        }
        if let newUser = NSEntityDescription.entity(forEntityName: "User",
                                                           in: managedOC) {
            let user = User(entity: newUser, insertInto: managedOC)
            user.bicLeft = bicLeft
            user.bicRight = bicRight
            user.chest = chest
            user.date = date
            user.height = height
            user.hipLeft = hipLeft
            user.hipRight = hipRight
            user.neck = neck
            user.waist = waist
            user.weight = weight
            try managedOC.save()
        }
        throw PersistenceError.couldNotSaveObject
    }

    
}
