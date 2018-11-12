//
//  MuscleGroupCell.swift
//  Fit4Life
//
//  Created by Alexandr on 10/16/18.
//  Copyright © 2018 Alex. All rights reserved.
//

import UIKit

class MuscleGroupCell: UITableViewCell {

    @IBOutlet weak var muscleGroupLabel: UILabel!
    @IBOutlet weak var muscleGroupImage: UIImageView!

    // MARK: - Lifecycle

    override func awakeFromNib() {
        super.awakeFromNib()

        setupUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

    // MARK: - Private methods

    private func setupUI() {
        muscleGroupLabel.font = UIFont.boldSystemFont(ofSize: 18)

    }

    func configure(data: MuscleGroups) {
        muscleGroupLabel.text = "\(data.muscleGroupArray)"
    }

}
