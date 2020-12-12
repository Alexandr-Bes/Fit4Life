//
//  CreateUserDataRouter.swift
//  Fit4Life
//
//  Created by Alex Bezkopylnyi on 15.09.2020.
//Copyright © 2020 Alex. All rights reserved.
//

import Foundation
import Viperit

// MARK: - CreateUserDataRouter class
final class CreateUserDataRouter: Router {
}

// MARK: - CreateUserDataRouter API
extension CreateUserDataRouter: CreateUserDataRouterApi {
}

// MARK: - CreateUserData Viper Components
private extension CreateUserDataRouter {
    var presenter: CreateUserDataPresenterApi {
        return _presenter as! CreateUserDataPresenterApi
    }
}
