//
//  CreateUserDataView.swift
//  Fit4Life
//
//  Created by Alex Bezkopylnyi on 15.09.2020.
//Copyright © 2020 Alex. All rights reserved.
//

import UIKit
import Viperit

//MARK: CreateUserDataView Class
final class CreateUserDataView: UserInterface {
}

//MARK: - CreateUserDataView API
extension CreateUserDataView: CreateUserDataViewApi {
}

// MARK: - CreateUserDataView Viper Components API
private extension CreateUserDataView {
    var presenter: CreateUserDataPresenterApi {
        return _presenter as! CreateUserDataPresenterApi
    }
    var displayData: CreateUserDataDisplayData {
        return _displayData as! CreateUserDataDisplayData
    }
}
