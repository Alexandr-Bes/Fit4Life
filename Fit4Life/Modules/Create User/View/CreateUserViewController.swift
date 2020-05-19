//
//  CreateUserViewController.swift
//  Fit4Life
//
//  Created by Alex Bezkopylnyi on 2/3/20.
//  Copyright © 2020 Alex. All rights reserved.
//

import Foundation
import UIKit

class CreateUserViewController: UIViewController {
    
    // MARK: - Properties
    
    var presenter: CreateUserPresenter?
    
    // MARK: - UI
    
    private lazy var nameTextField: UITextField = {
       let textField = UITextField()
        
        return textField
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Private Methods
    
}
