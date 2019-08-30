//
//  ExercisesViewController.swift
//  Fit4Life
//
//  Created by Alexandr on 9/4/18.
//  Copyright © 2018 Alex. All rights reserved.
//

import UIKit

class ExercisesViewController: UIViewController {

    // MARK: - Private properties

    private struct Constants {
        static let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        static let exStoryboard = "Exercises"
        static let exVC = "SomeNewViewController"
        static let initialDataTC = "InitialDataTableViewController"
    }

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        ifViewedInitialScreen()
    }

    // MARK: - Private Methods
    private func setupUI() {
        title = "Muscle Group"

    }

    // FIXME: - Need some improvements!
    private func ifViewedInitialScreen() {
        if UserDefaults.standard.bool(forKey: "ViewedInitialScreen") {
            return
        }
        let initialDataTC = Constants.mainStoryboard.instantiateViewController(withIdentifier: Constants.initialDataTC) as! InitialDataTableViewController

        if let navCtrl = self.navigationController
        {
            navCtrl.pushViewController(initialDataTC, animated: true)
        }
        else
        {
            let navCtrl = UINavigationController(rootViewController: initialDataTC)
            present(navCtrl, animated: true, completion: nil)
        }


    }



}
