//
//  TableViewCell+Identifier.swift
//  Fit4Life
//
//  Created by Alexandr on 6/19/19.
//  Copyright © 2019 Alex. All rights reserved.
//

import UIKit

extension UITableViewCell {

    static var identifier: String {
        return String(describing: self)
    }

    static var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
}
