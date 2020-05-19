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
//    Preseneter -> View
    func createUser(_ user: User)
    //TODO ?
}

protocol CreateUserViewPresenterProtocol: class {
    //    View -> Presenter
    var view: CreateUserPresenterViewProtocol? { set get }
    var router: CreateUserPresenterRouterProtocol? { set get }
    var interactor: CreateUserPresenterInteractorProtocol? { set get }
}

protocol CreateUserPresenterInteractorProtocol: class {
    //    Presenter -> Interactor
    var presenter: CreateUserInteractorPresenterProtocol? { set get }
    func saveData()
}

protocol CreateUserInteractorPresenterProtocol: class {
    //    Interactor -> Presenter
    //TODO
    func createUser(_ user: User)
    func createUserFailed(_ error: String)
}

protocol CreateUserDataManagerInputProtocol {
    // Interactor -> DataManager
    func retrieveUser() throws -> [User]
    func saveUser(bicLeft: String, bicRight: String, chest: String, date: String, height: String, hipLeft: String, hipRight: String, neck: String, waist: String, weight: String) throws
}

protocol CreateUserPresenterRouterProtocol: class {
    //    Presenter -> Router
    static func createUserModule() -> CreateUserViewController
    func pushToMainTabBar(with locationPhoto: User,
                                   in navigationController: UINavigationController)
}

enum UserError: Error {
    
}
