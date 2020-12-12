//
//  CreateUserDataInteractor.swift
//  Fit4Life
//
//  Created by Alex Bezkopylnyi on 15.09.2020.
//Copyright © 2020 Alex. All rights reserved.
//

import Foundation
import Viperit

// MARK: - CreateUserDataInteractor Class
final class CreateUserDataInteractor: Interactor {
}

// MARK: - CreateUserDataInteractor API
extension CreateUserDataInteractor: CreateUserDataInteractorApi {
}

// MARK: - Interactor Viper Components Api
private extension CreateUserDataInteractor {
    var presenter: CreateUserDataPresenterApi {
        return _presenter as! CreateUserDataPresenterApi
    }
}
