//
//  CreateUserDataPresenter.swift
//  Fit4Life
//
//  Created by Alex Bezkopylnyi on 15.09.2020.
//Copyright © 2020 Alex. All rights reserved.
//

import Foundation
import Viperit

// MARK: - CreateUserDataPresenter Class
final class CreateUserDataPresenter: Presenter {
}

// MARK: - CreateUserDataPresenter API
extension CreateUserDataPresenter: CreateUserDataPresenterApi {
}

// MARK: - CreateUserData Viper Components
private extension CreateUserDataPresenter {
    var view: CreateUserDataViewApi {
        return _view as! CreateUserDataViewApi
    }
    var interactor: CreateUserDataInteractorApi {
        return _interactor as! CreateUserDataInteractorApi
    }
    var router: CreateUserDataRouterApi {
        return _router as! CreateUserDataRouterApi
    }
}
