//
//  UserDataViewController.swift
//  Fit4Life
//
//  Created by Alexandr on 26.07.2018.
//  Copyright © 2018 Alex. All rights reserved.
//

import UIKit

class UserDataViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var userDataTableView: UITableView!

    // MARK: - Private properties

    private struct Constants {
        static let mainStoryBoardName = "Main"
        static let tabBarViewController = "MainTabBarController"
        static let addingNewMeasureTableViewController = "AddingNewMeasureTableViewController"
        static let dataTableViewCellId  = "DataTableViewCell"
    }


    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        userDataTableView.delegate = self
        userDataTableView.dataSource = self

        guard let nibsArray = Bundle.main.loadNibNamed(Constants.dataTableViewCellId, owner: nil, options: nil),
            let nib = nibsArray[0] as? UINib
            else { return }
        userDataTableView.register(nib, forCellReuseIdentifier: Constants.dataTableViewCellId)

        title = "My parameters"
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        let user = Data.shared.data
        var userName = [String]()
        for name in user {
            userName.append(name.name)
        }
        print(userName)
    }

    // MARK: - Actions

    @IBAction func addNewMeasure(_ sender: Any) {

        let linkToAddingNewMeasureTableViewController = UIStoryboard(name: Constants.mainStoryBoardName, bundle: nil).instantiateViewController(withIdentifier: "AddingNewMeasureNavigationController")

        present(linkToAddingNewMeasureTableViewController, animated: true)
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.shared.data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.dataTableViewCellId, for: indexPath) as! DataTableViewCell

        cell.weightLabel.text = "Your weight"
        return cell
    }

}
