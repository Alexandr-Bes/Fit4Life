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
        static let exStoryboard = "Exercises"
        static let exVC = "SomeNewViewController"
    }

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }

    // MARK: - Private Methods

    private func setupUI() {
        title = "Muscle Group"

    }


//        let goToVC = UIStoryboard(name: Constants.exStoryboard, bundle: nil).instantiateViewController(withIdentifier: Constants.exVC)
//
//        navigationController?.pushViewController(goToVC, animated: true)

}
