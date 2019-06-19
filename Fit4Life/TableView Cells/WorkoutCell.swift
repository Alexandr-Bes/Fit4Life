//
//  ExercisesCell.swift
//  Fit4Life
//
//  Created by Alexandr on 6/19/19.
//  Copyright © 2019 Alex. All rights reserved.
//

import UIKit

class WorkoutCell: UITableViewCell {

    @IBOutlet weak var nameOfWorkoutLabel: UILabel!
    @IBOutlet weak var workoutImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)


    }
    
}
