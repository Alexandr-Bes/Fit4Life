//
//  CreateUserProtocol.swift
//  Fit4Life
//
//  Created by Alex Bezkopylnyi on 2/3/20.
//  Copyright © 2020 Alex. All rights reserved.
//

import Foundation
import UIKit

protocol CreateUserPresenterViewProtocol: class {
    //TODO
}

protocol CreateUserViewPresenterProtocol: class {
    var view: CreateUserPresenterViewProtocol? { set get }
    var router: CreateUserPresenterRouterProtocol? { set get }
    var interactor: CreateUserPresenterInteractorProtocol? { set get }
}

protocol CreateUserPresenterInteractorProtocol: class {
    //TODO
}

protocol CreateUserInteractorPresenterProtocol: class {
    //TODO
}

protocol CreateUserPresenterRouterProtocol: class {
    //TODO
}

