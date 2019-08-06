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
    @IBOutlet weak var dateOfMeasurement: UILabel!

    // MARK: - Private Properties

    // MARK: - Lifecycle Methods
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    // MARK: - Private Methods
    private func setupUI() {
        weightLabel.font = UIFont.boldSystemFont(ofSize: 18)
    }

    func configure(data: UserData) {
        if data.weight == "Not set" {
             weightLabel.text = "Not set"
        } else {
            weightLabel.text = "\(data.weight)kg"
        }
        dateOfMeasurement.text = "\(data.date)"
    }
}
