//
//  SettingsInteractor.swift
//  Fit4Life
//
//  Created by Alexandr on 04.02.2020.
//Copyright © 2020 Alex. All rights reserved.
//

import Foundation
import Viperit

// MARK: - SettingsInteractor Class
final class SettingsInteractor: Interactor {
}

// MARK: - SettingsInteractor API
extension SettingsInteractor: SettingsInteractorApi {
}

// MARK: - Interactor Viper Components Api
private extension SettingsInteractor {
    var presenter: SettingsPresenterApi {
        return _presenter as! SettingsPresenterApi
    }
}
