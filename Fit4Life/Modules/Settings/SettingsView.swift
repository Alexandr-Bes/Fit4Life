//
//  SettingsView.swift
//  Fit4Life
//
//  Created by Alexandr on 04.02.2020.
//Copyright © 2020 Alex. All rights reserved.
//

import UIKit
import Viperit

//MARK: SettingsView Class
final class SettingsView: UserInterface {
}

//MARK: - SettingsView API
extension SettingsView: SettingsViewApi {
}

// MARK: - SettingsView Viper Components API
private extension SettingsView {
    var presenter: SettingsPresenterApi {
        return _presenter as! SettingsPresenterApi
    }
    var displayData: SettingsDisplayData {
        return _displayData as! SettingsDisplayData
    }
}
