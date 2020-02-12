//
//  SettingsPresenter.swift
//  Fit4Life
//
//  Created by Alexandr on 04.02.2020.
//Copyright © 2020 Alex. All rights reserved.
//

import Foundation
import Viperit

// MARK: - SettingsPresenter Class
final class SettingsPresenter: Presenter {
}

// MARK: - SettingsPresenter API
extension SettingsPresenter: SettingsPresenterApi {
}

// MARK: - Settings Viper Components
private extension SettingsPresenter {
    var view: SettingsViewApi {
        return _view as! SettingsViewApi
    }
    var interactor: SettingsInteractorApi {
        return _interactor as! SettingsInteractorApi
    }
    var router: SettingsRouterApi {
        return _router as! SettingsRouterApi
    }
}
