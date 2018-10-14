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
        setupUI()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        let user = StoredData.shared.data

        var userWeight = [Double]()
        for weight in user {
            userWeight.append(weight.weight ?? 0.0)
        }
        print(userWeight)

        userDataTableView.reloadData()
    }

    // MARK: - Private properties

    private func setupUI() {

        userDataTableView.delegate = self
        userDataTableView.dataSource = self

        title = "My parameters"

        userDataTableView.tableFooterView = UIView()
        userDataTableView.allowsSelection = false
        userDataTableView.keyboardDismissMode = .onDrag

        let nib = UINib(nibName: Constants.dataTableViewCellId, bundle: nil)
        userDataTableView.register(nib, forCellReuseIdentifier: Constants.dataTableViewCellId)
    }

    // MARK: - Actions

    @IBAction func addNewMeasure(_ sender: Any) {

        let linkToAddingNewMeasureTableViewController = UIStoryboard(name: Constants.mainStoryBoardName, bundle: nil).instantiateViewController(withIdentifier: "AddingNewMeasureNavigationController")

        present(linkToAddingNewMeasureTableViewController, animated: true)
    }

    // MARK: - UI Table View Delegate and Data Source

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return StoredData.shared.data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.dataTableViewCellId, for: indexPath) as! DataTableViewCell

        let measurement = StoredData.shared.data[indexPath.row]
        cell.configure(data: measurement)
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 49.5
    }
}
