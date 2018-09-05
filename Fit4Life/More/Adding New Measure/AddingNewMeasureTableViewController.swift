//
//  AddingNewMeasureTableViewController.swift
//  Fit4Life
//
//  Created by Alexandr on 05.08.2018.
//  Copyright © 2018 Alex. All rights reserved.
//

import UIKit

class AddingNewMeasureTableViewController: UITableViewController, UITextFieldDelegate {


    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var chestTextField: UITextField!
    @IBOutlet weak var waistTextField: UITextField!
    @IBOutlet weak var neckTextField: UITextField!
    @IBOutlet weak var bicRightTextField: UITextField!
    @IBOutlet weak var bicLeftTextField: UITextField!
    @IBOutlet weak var hipRightTextField: UITextField!
    @IBOutlet weak var hipLeftTextField: UITextField!
    @IBOutlet weak var setDateTextField: UITextField!

    // MARK: - Private properties

    private struct Constants {
        static let mainStoryBoardName = "Main"
        static let userDataViewController = "UserDataViewController"
        static let tabBarViewController = "MainTabBarController"
    }

    private var datePicker: UIDatePicker?

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    // MARK: - Private Methods

    private func setupUI() {

        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        datePicker?.addTarget(self, action: #selector(AddingNewMeasureTableViewController.dateChanged(datePicker:)), for: .valueChanged)

        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(AddingNewMeasureTableViewController.viewTapped(gestureRecognizer:)))

        view.addGestureRecognizer(tapGesture)

        setDateTextField.inputView = datePicker

        title = "New Measure"

        tableView.allowsSelection = false
        tableView.tableFooterView = UIView()
        tableView.keyboardDismissMode = .onDrag

    }

    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer) {
                view.endEditing(true)
    }

    @objc private func dateChanged (datePicker: UIDatePicker) {

        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy"

        setDateTextField.text = dateFormatter.string(from: datePicker.date)
        view.endEditing(true)
    }

    // MARK: - Actions

    @IBAction func cancelButton(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }

    @IBAction func saveNewMeasureButton(_ sender: UIBarButtonItem) {

    }

    // MARK: - UI Text Field Delegate methods


    // MARK: - Alert message
    func displayMassage(userMassage:String) -> Void {
        DispatchQueue.main.async {
            let alertContoller = UIAlertController(title: "Error", message: userMassage, preferredStyle: .alert)

            let OkAction = UIAlertAction(title: "OK", style: .destructive) {
                (action:UIAlertAction!) in
                DispatchQueue.main.async {
                    self.dismiss(animated: true, completion: nil)
                }
            }
            alertContoller.addAction(OkAction)
            self.present(alertContoller, animated: true, completion: nil)
        }
    }
}
