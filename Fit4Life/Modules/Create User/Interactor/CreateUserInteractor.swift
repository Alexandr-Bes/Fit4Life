//
//  CreateUserInteractor.swift
//  Fit4Life
//
//  Created by Alex Bezkopylnyi on 2/3/20.
//  Copyright © 2020 Alex. All rights reserved.
//

import Foundation
import CoreData

class CreateUserInteractor: CreateUserPresenterInteractorProtocol {
    var presenter: CreateUserInteractorPresenterProtocol?
    var dataManager: CreateUserDataManagerInputProtocol?

    func saveData() {
        do {
            if let user = try dataManager?.retrieveUser() {
                // TODO: - Retrieving Data 
//                let userModel = user
            }
        } catch {

        }
        print("save")
    }

    
}
