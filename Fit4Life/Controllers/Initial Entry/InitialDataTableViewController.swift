//
//  InitialDataTableViewController.swift
//  Fit4Life
//
//  Created by Alexandr on 15.07.2018.
//  Copyright © 2018 Alex. All rights reserved.
//

import UIKit

class InitialDataTableViewController: UITableViewController, UITextFieldDelegate {

    // MARK: - Outlets
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var chestTextField: UITextField!
    @IBOutlet weak var waistTextField: UITextField!
    @IBOutlet weak var neckTextField: UITextField!
    @IBOutlet weak var bicepsRightTextField: UITextField!
    @IBOutlet weak var bicepsLeftTextField: UITextField!
    @IBOutlet weak var hipRightTextField: UITextField!
    @IBOutlet weak var hipLeftTextField: UITextField!
    @IBOutlet weak var setDateTextField: UITextField!


    // MARK: - Private Properties

    private struct Constants {
        static let mainStoryBoardName = "Main"
        static let tabBarViewController = "MainTabBarController"
    }

    private var dateString = String()

    // MARK: - Lifecycle Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    // MARK: - Private Methods
    private func setupUI() {

        // Keyboard for text fields
        nameTextField.keyboardType = .namePhonePad
        heightTextField.keyboardType = .decimalPad
        weightTextField.keyboardType = .decimalPad
        chestTextField.keyboardType = .decimalPad
        waistTextField.keyboardType = .decimalPad
        neckTextField.keyboardType = .decimalPad
        bicepsRightTextField.keyboardType = .decimalPad
        bicepsLeftTextField.keyboardType = .decimalPad
        hipRightTextField.keyboardType = .decimalPad
        hipLeftTextField.keyboardType = .decimalPad

        nameTextField.delegate = self
        heightTextField.delegate = self
        weightTextField.delegate = self
        chestTextField.delegate = self
        waistTextField.delegate = self
        neckTextField.delegate = self
        bicepsRightTextField.delegate = self
        bicepsLeftTextField.delegate = self
        hipRightTextField.delegate = self
        hipLeftTextField.delegate = self

        title = "Create User"
        
        tableView.allowsSelection = false
        tableView.tableFooterView = UIView()
        tableView.keyboardDismissMode = .onDrag

        heightTextField.inputAccessoryView = makeToolBar(type: .next, tag: TextField.height.rawValue)
        weightTextField.inputAccessoryView = makeToolBar(type: .next, tag: TextField.weight.rawValue)
        chestTextField.inputAccessoryView = makeToolBar(type: .next, tag: TextField.chest.rawValue)
        waistTextField.inputAccessoryView = makeToolBar(type: .next, tag: TextField.waist.rawValue)
        neckTextField.inputAccessoryView = makeToolBar(type: .next, tag: TextField.neck.rawValue)
        bicepsRightTextField.inputAccessoryView = makeToolBar(type: .next, tag: TextField.bicRight.rawValue)
        bicepsLeftTextField.inputAccessoryView = makeToolBar(type: .next, tag: TextField.bicLeft.rawValue)
        hipRightTextField.inputAccessoryView = makeToolBar(type: .next, tag: TextField.hipRight.rawValue)
        hipLeftTextField.inputAccessoryView = makeToolBar(type: .next, tag: TextField.hipLeft.rawValue)
        setDateTextField.inputAccessoryView = dateToolbar

        //  DatePicker
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = UIDatePicker.Mode.date
        datePicker.addTarget(self, action: #selector(InitialDataTableViewController.datePickerValueChanged(sender:)), for: UIControl.Event.valueChanged)

        setDateTextField.inputView = datePicker
    }


    //  ToolBar for TextFields
    private func makeToolBar(type: TypingResultButtonType, tag: Int) -> UIToolbar {
        let toolbar = UIToolbar()
        let doneButton = UIBarButtonItem(title: type.rawValue, style: .done, target: nil, action:  #selector(doneAction))
        doneButton.tag = tag
        let flexibleItem = UIBarButtonItem(barButtonSystemItem:  .flexibleSpace, target: nil, action: nil)
        toolbar.items = [flexibleItem, doneButton]
        toolbar.sizeToFit()
        return toolbar
    }

    @objc private func doneAction(sender: UIBarButtonItem) {

        guard let textField = TextField(rawValue: sender.tag) else { return }

        switch textField {
        case .height: weightTextField.becomeFirstResponder()
        case .weight: chestTextField.becomeFirstResponder()
        case .chest: waistTextField.becomeFirstResponder()
        case .waist: neckTextField.becomeFirstResponder()
        case .neck: bicepsRightTextField.becomeFirstResponder()
        case .bicRight: bicepsLeftTextField.becomeFirstResponder()
        case .bicLeft: hipRightTextField.becomeFirstResponder()
        case .hipRight: hipLeftTextField.becomeFirstResponder()
        case .hipLeft: setDateTextField.becomeFirstResponder()
        case .setDate: view.endEditing(true)
        }
    }

    //  SetDateTextField valueChanged
    @objc private func datePickerValueChanged(sender: UIDatePicker) {
        let formatter = DateFormatter()
        formatter.dateStyle = DateFormatter.Style.medium
        formatter.timeStyle = DateFormatter.Style.none
        setDateTextField.text = formatter.string(from: sender.date)
        dateString = formatter.string(from: sender.date)
    }

    //  Today pressed for setDateTextField
    @objc private func todayPressed(sender: UIBarButtonItem) {
        let formatter = DateFormatter()
        formatter.dateStyle = DateFormatter.Style.medium
        setDateTextField.text = formatter.string(from: Date())
        setDateTextField.resignFirstResponder()
        dateString = formatter.string(from: Date())
    }

    //  Done pressed for setDateTextField
    @objc private func donePressed(sender: UIBarButtonItem) {
        setDateTextField.resignFirstResponder()
    }

    //  Toolbar for setDateTextF
    lazy var dateToolbar: UIToolbar = {

        let toolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 40))
        toolbar.tintColor = .blue

        let todayButton = UIBarButtonItem(title: "Today", style: .done, target: self, action: #selector(todayPressed(sender:)))
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(donePressed(sender:)))
        let flexButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        toolbar.setItems([todayButton, flexButton, doneButton], animated: true)

        return toolbar
    }()

    // MARK: - Actions
    @IBAction func saveDataButton(_ sender: Any) {

        if  (heightTextField.text?.isEmpty)! ||
            (weightTextField.text?.isEmpty)! {
                showDefaultAlert(title: "Oops", message: "Sorry, you have to set at least your height and weight")
                return
        }

        guard let heightString = heightTextField.text,
            let heightDouble = Double(heightString),
            let weightString = weightTextField.text,
            let weightDouble = Double(weightString),
            let chestString = chestTextField.text,
            let waistString = waistTextField.text,
            let neckString = neckTextField.text,
            let bicRightString = bicepsRightTextField.text,
            let bicLeftString = bicepsLeftTextField.text,
            let hipRightString = hipRightTextField.text,
            let hipLeftString = hipLeftTextField.text

        else {
            return
        }

        let ifEmptyChest = chestString == "" ? "0.0" : chestString
        let ifEmptyWaist = waistString == "" ? "0.0" : waistString
        let ifEmptyNeck = neckString == "" ? "0.0" : neckString
        let ifEmptyBicR = bicRightString == "" ? "0.0" : bicRightString
        let ifEmptyBicL = bicLeftString == "" ? "0.0" : bicLeftString
        let ifEmptyHipR = hipRightString == "" ? "0.0" : hipRightString
        let ifEmptyHipL = hipLeftString == "" ? "0.0" : hipLeftString

        // If setDateTextField is empty put today date in UserData
        guard let dateWrapped = setDateTextField.text?.isEmpty else {
            return
        }

        if dateWrapped == true {
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = DateFormatter.Style.medium
            dateString = dateFormatter.string(from: Date())
            setDateTextField.text = dateString
        }

        let newUser = UserData(date: dateString, height: heightDouble, weight: weightDouble, chest: Double(ifEmptyChest), waist: Double(ifEmptyWaist), neck: Double(ifEmptyNeck), bicRight: Double(ifEmptyBicR), bicLeft: Double(ifEmptyBicL), hipRight: Double(ifEmptyHipR), hipLeft: Double(ifEmptyHipL), manWoman: true)

        StoredData.shared.data.append(newUser)

        let goToMainTabBarController = UIStoryboard(name: Constants.mainStoryBoardName, bundle: nil).instantiateViewController(withIdentifier: Constants.tabBarViewController)

        present(goToMainTabBarController, animated: true)
        print(newUser.description)
    }

    @IBAction func manOrWomanToggle(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            print("Man")
        } else {
            print("Woman")
        }
    }

    // MARK: - UI Text Field Delegate methods
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == nameTextField {
            heightTextField.becomeFirstResponder()
        } else if textField == heightTextField {
            weightTextField.becomeFirstResponder()
        } else if textField == weightTextField {
            chestTextField.becomeFirstResponder()
        } else if textField == chestTextField {
            waistTextField.becomeFirstResponder()
        } else if textField == waistTextField {
            neckTextField.becomeFirstResponder()
        } else if textField == bicepsRightTextField {
            bicepsLeftTextField.becomeFirstResponder()
        } else if textField == bicepsLeftTextField {
            hipRightTextField.becomeFirstResponder()
        } else if textField == hipRightTextField {
            hipLeftTextField.becomeFirstResponder()
        } else if textField == hipLeftTextField {
            setDateTextField.becomeFirstResponder()
        } else if textField == setDateTextField {
            view.endEditing(true)
        }
        return true
    }

    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }


}

private enum TypingResultButtonType: String {
    case next = "Next"
    case done = "Done"
}

private enum  TextField: Int {
    case height = 10, weight, chest, waist, neck, bicRight, bicLeft, hipRight, hipLeft, setDate
}
