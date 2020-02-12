//
//  SettingsRouter.swift
//  Fit4Life
//
//  Created by Alexandr on 04.02.2020.
//Copyright © 2020 Alex. All rights reserved.
//

import Foundation
import Viperit

// MARK: - SettingsRouter class
final class SettingsRouter: Router {
}

// MARK: - SettingsRouter API
extension SettingsRouter: SettingsRouterApi {
}

// MARK: - Settings Viper Components
private extension SettingsRouter {
    var presenter: SettingsPresenterApi {
        return _presenter as! SettingsPresenterApi
    }
}
