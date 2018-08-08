//
//  AddingNewMeasureTableViewController.swift
//  Fit4Life
//
//  Created by Alexandr on 05.08.2018.
//  Copyright © 2018 Alex. All rights reserved.
//

import UIKit

class AddingNewMeasureTableViewController: UITableViewController, UITextFieldDelegate {

    // MARK: - Private properties

    private struct Constants {
        static let mainStoryBoardName = "Main"
        static let userDataViewController = "UserDataViewController"
        static let tabBarViewController = "MainTabBarController"
    }

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    // MARK: - Private Methods

    private func setupUI() {

        title = "New Measure"
    }

    // MARK: - Actions

    @IBAction func cancelButton(_ sender: UIBarButtonItem) {

        let returnToUserDataViewController = UIStoryboard(name: Constants.mainStoryBoardName, bundle: nil).instantiateViewController(withIdentifier: "MainTabBarController")

        present(returnToUserDataViewController, animated: true)
    }

    @IBAction func saveNewMeasureButton(_ sender: UIBarButtonItem) {

    }
}
