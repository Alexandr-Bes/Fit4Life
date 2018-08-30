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

        let nib = UINib(nibName: Constants.dataTableViewCellId, bundle: nil)
        userDataTableView.register(nib, forCellReuseIdentifier: Constants.dataTableViewCellId)

        title = "My parameters"
        userDataTableView.tableFooterView = UIView()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        let user = StoredData.shared.data
        var userName = [String]()
        for name in user {
            userName.append(name.name)
        }
        print(userName)

        userDataTableView.reloadData()
    }

    // MARK: - Actions

    @IBAction func addNewMeasure(_ sender: Any) {

        let linkToAddingNewMeasureTableViewController = UIStoryboard(name: Constants.mainStoryBoardName, bundle: nil).instantiateViewController(withIdentifier: "AddingNewMeasureNavigationController")

        present(linkToAddingNewMeasureTableViewController, animated: true)
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return StoredData.shared.data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.dataTableViewCellId, for: indexPath) as! DataTableViewCell

        cell.weightLabel.text = "Your weight"
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160.5
    }
}
