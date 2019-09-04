//
//  WorkoutsViewController.swift
//  Fit4Life
//
//  Created by Alexandr on 9/4/18.
//  Copyright © 2018 Alex. All rights reserved.
//

import UIKit

class WorkoutsViewController: UIViewController {

    @IBOutlet weak var workoutTableView: UITableView!

    private var workouts = ["Hello", "First attempt", "Fuck", "Train Hard", "Move Around", "Force", "Speed"]

    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    // MARK: - Private Methods
    private func setupUI() {
        title = "Workouts"
        workoutTableView.dataSource = self
        workoutTableView.delegate = self
        //Register for WorkoutCell.xib
        workoutTableView.register(UINib(nibName: WorkoutCell.identifier, bundle: nil), forCellReuseIdentifier: WorkoutCell.identifier)
    }

}

// MARK: - Table View Data Source Methods
extension WorkoutsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return workouts.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: WorkoutCell.identifier, for: indexPath) as? WorkoutCell else {
            return UITableViewCell()
        }
        cell.nameOfWorkoutLabel.text = workouts[indexPath.row]
        cell.accessoryType = .detailButton
        return cell
    }

    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            workoutTableView.beginUpdates()
            workouts.remove(at: indexPath.row)
            workoutTableView.deleteRows(at: [indexPath], with: .left)
            workoutTableView.endUpdates()
        }
    }
}

// MARK: - Table View Delegate Methods
extension WorkoutsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
