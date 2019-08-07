//
//  ViewController+DisplayAlert.swift
//  Fit4Life
//
//  Created by Alexandr on 6/19/19.
//  Copyright © 2019 Alex. All rights reserved.
//

import UIKit

extension UIViewController {
    func showDefaultAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title: "OK", style: .destructive, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
