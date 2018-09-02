//
//  DataTableViewCell.swift
//  Fit4Life
//
//  Created by Alexandr on 03.08.2018.
//  Copyright © 2018 Alex. All rights reserved.
//

import UIKit

class DataTableViewCell: UITableViewCell {

    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var chestLabel: UILabel!
    @IBOutlet weak var waistLabel: UILabel!
    @IBOutlet weak var bicRightLabel: UILabel!
    @IBOutlet weak var bicLeftLabel: UILabel!
    @IBOutlet weak var dateOfMeasureTextField: UITextField!

    // MARK: - Private properties

    private var datePicker: UIDatePicker?

    // MARK: - Lifecycle

    override func awakeFromNib() {
        super.awakeFromNib()

        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date

        dateOfMeasureTextField.inputView = datePicker
        setupUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

    // MARK: - Private methods

    private func setupUI() {
        weightLabel.font = UIFont.boldSystemFont(ofSize: 18)

        bicRightLabel.textColor = UIColor.darkGray
        bicLeftLabel.textColor = UIColor.darkGray
    }
    
}
