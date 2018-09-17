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

//    private var datePicker: UIDatePicker?

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    // MARK: - Private Methods

    private func setupUI() {

// Keyboard for text fields
        weightTextField.keyboardType = .decimalPad
        chestTextField.keyboardType = .decimalPad
        waistTextField.keyboardType = .decimalPad
        neckTextField.keyboardType = .decimalPad
        bicRightTextField.keyboardType = .decimalPad
        bicLeftTextField.keyboardType = .decimalPad
        hipRightTextField.keyboardType = .decimalPad
        hipLeftTextField.keyboardType = .decimalPad

        weightTextField.delegate = self
        chestTextField.delegate = self
        waistTextField.delegate = self
        neckTextField.delegate = self
        bicRightTextField.delegate = self
        bicLeftTextField.delegate = self
        hipRightTextField.delegate = self
        hipLeftTextField.delegate = self



// Date Picker
//        datePicker = UIDatePicker()
//        datePicker?.datePickerMode = .date
//        datePicker?.addTarget(self, action: #selector(AddingNewMeasureTableViewController.dateChanged(datePicker:)), for: .valueChanged)
//
//        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(AddingNewMeasureTableViewController.viewTapped(gestureRecognizer:)))
//
//        view.addGestureRecognizer(tapGesture)
//        setDateTextField.inputView = datePicker

        title = "New Measure"

        tableView.allowsSelection = false
        tableView.tableFooterView = UIView()
        tableView.keyboardDismissMode = .onDrag

        weightTextField.inputAccessoryView = makeToolBar(type: .next, tag: TextField.weight.rawValue)
        chestTextField.inputAccessoryView = makeToolBar(type: .next, tag: TextField.chest.rawValue)
        waistTextField.inputAccessoryView = makeToolBar(type: .next, tag: TextField.waist.rawValue)
        neckTextField.inputAccessoryView = makeToolBar(type: .next, tag: TextField.neck.rawValue)
        bicRightTextField.inputAccessoryView = makeToolBar(type: .next, tag: TextField.bicRight.rawValue)
        bicLeftTextField.inputAccessoryView = makeToolBar(type: .next, tag: TextField.bicLeft.rawValue)
        hipRightTextField.inputAccessoryView = makeToolBar(type: .next, tag: TextField.hipRight.rawValue)
        hipLeftTextField.inputAccessoryView = makeToolBar(type: .done, tag: TextField.hipLeft.rawValue)
    }

    // Tool Bar
    private func makeToolBar(type: TypingResultButtonType, tag: Int) -> UIToolbar {
        let toolbar = UIToolbar()
        let doneButton = UIBarButtonItem(title: type.rawValue, style: .done, target: nil, action: #selector(doneAction))
        doneButton.tag = tag
        let flexibleItem = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        toolbar.items = [flexibleItem, doneButton]
        toolbar.sizeToFit()
        return toolbar
    }

// Done Action Tool Bar
    @objc private func doneAction(sender: UIBarButtonItem) {

        guard let textField = TextField(rawValue: sender.tag) else { return }

        switch textField {
        case .weight: chestTextField.becomeFirstResponder()
        case .chest: waistTextField.becomeFirstResponder()
        case .waist: neckTextField.becomeFirstResponder()
        case .neck: bicRightTextField.becomeFirstResponder()
        case .bicRight: bicLeftTextField.becomeFirstResponder()
        case .bicLeft: hipRightTextField.becomeFirstResponder()
        case .hipRight: hipLeftTextField.becomeFirstResponder()
        case .hipLeft: view.endEditing(true)
        }
    }

//    @objc private func viewTapped(gestureRecognizer: UITapGestureRecognizer) {
//                view.endEditing(true)
//    }
//
//    @objc private func dateChanged (datePicker: UIDatePicker) {
//
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "dd.MM.yyyy"
//
//        setDateTextField.text = dateFormatter.string(from: datePicker.date)
//        view.endEditing(true)
//    }

    // MARK: - Actions

    @IBAction func cancelButton(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }

    @IBAction func saveNewMeasureButton(_ sender: Any) {

        guard let weightString =  weightTextField.text,
            let weightDouble = Double(weightString),
            let chestString = chestTextField.text,
            let waistString = waistTextField.text,
            let neckString = neckTextField.text,
            let bicRightString = bicRightTextField.text,
            let bicLeftString = bicLeftTextField.text,
            let hipRightString = hipRightTextField.text,
            let hipLeftString = hipLeftTextField.text

            else {
                return
        }

//        let ifEmptyWeight = weightString == "" ? "0.0" : weightString
        let ifEmptyChest = chestString == "" ? "0.0" : chestString
        let ifEmptyWaist = waistString == "" ? "0.0" : waistString
        let ifEmptyNeck = neckString == "" ? "0.0" : neckString
        let ifEmptyBicR = bicRightString == "" ? "0.0" : bicRightString
        let ifEmptyBicL = bicLeftString == "" ? "0.0" : bicLeftString
        let ifEmptyHipR = hipRightString == "" ? "0.0" : hipRightString
        let ifEmptyHipL = hipLeftString == "" ? "0.0" : hipLeftString

        let newUser = UserData(name: "SS", height: 100, weight: weightDouble, chest: Double(ifEmptyChest), waist: Double(ifEmptyWaist), neck: Double(ifEmptyNeck), bicRight: Double(ifEmptyBicR), bicLeft: Double(ifEmptyBicL), hipRight: Double(ifEmptyHipR), hipLeft: Double(ifEmptyHipL), manWoman: true)

        StoredData.shared.data.append(newUser)

        let goToUserDataViewController = UIStoryboard(name: Constants.mainStoryBoardName, bundle: nil).instantiateViewController(withIdentifier: Constants.tabBarViewController)

        present(goToUserDataViewController, animated: true)

        print(newUser.description)
    }



    // MARK: - UI Text Field Delegate methods

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == weightTextField {
            chestTextField.becomeFirstResponder()
        } else if textField == chestTextField {
            waistTextField.becomeFirstResponder()
        } else if textField == waistTextField {
            neckTextField.becomeFirstResponder()
        } else if textField == neckTextField {
            bicRightTextField.becomeFirstResponder()
        } else if textField == bicRightTextField {
            bicLeftTextField.becomeFirstResponder()
        } else if textField == bicLeftTextField {
            hipRightTextField.becomeFirstResponder()
        } else if textField == hipRightTextField {
            hipLeftTextField.becomeFirstResponder()
        } else if textField == hipLeftTextField {
            view.endEditing(true)
        }
        return true
    }

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

private enum TypingResultButtonType: String {
    case next = "Next"
    case done = "Done"
}

private enum  TextField: Int {
    case weight = 10, chest, waist, neck, bicRight, bicLeft, hipRight, hipLeft
}
