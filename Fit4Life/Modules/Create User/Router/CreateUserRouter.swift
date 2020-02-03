//
//  CreateUserRouter.swift
//  Fit4Life
//
//  Created by Alex Bezkopylnyi on 2/3/20.
//  Copyright © 2020 Alex. All rights reserved.
//

import Foundation
import UIKit

final class CreateUserRouter {
    
    static func buildCreateUserModule() -> InitialDataTableViewController {
        let storyboard = UIStoryboard(storyboard: .main, bundle: Bundle.main)
        
        let view: InitialDataTableViewController = storyboard.instantiateViewController()
        var presenter = CreateUserPresenter()
        var interactor = CreateUserInteractor()
        let router = CreateUserRouter()
        
        // Temp
        return InitialDataTableViewController()
    }
    
}
