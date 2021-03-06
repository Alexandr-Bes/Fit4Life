//
//  String+DateFormatter.swift
//  Fit4Life
//
//  Created by Alexandr on 8/7/19.
//  Copyright © 2019 Alex. All rights reserved.
//

import UIKit

extension String {
    mutating func formatCurrentDate() {
        let formatter = DateFormatter()
        formatter.dateStyle = DateFormatter.Style.medium
        self = formatter.string(from: Date())
    }
    
    func capitalizeFirst() -> String {
        let first = String(prefix(1)).capitalized
        let other = String(dropFirst())
        return first + other
    }
}
