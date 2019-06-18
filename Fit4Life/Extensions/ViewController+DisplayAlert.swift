//
//  ViewController+DisplayAlert.swift
//  Fit4Life
//
//  Created by Alexandr on 6/19/19.
//  Copyright © 2019 Alex. All rights reserved.
//

import UIKit

extension UIViewController {
    func showDefaultAlert(title: String, message: String) -> Void {
        DispatchQueue.main.async {
            let alertContoller = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let OkAction = UIAlertAction(title: "OK", style: .destructive) {
                (action: UIAlertAction!) in
                DispatchQueue.main.async {
                    self.dismiss(animated: true, completion: nil)
                }
            }
            alertContoller.addAction(OkAction)
            self.present(alertContoller, animated: true, completion: nil)
        }
    }
}
