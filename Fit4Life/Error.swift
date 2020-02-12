//
//  Error.swift
//  Fit4Life
//
//  Created by Alexandr on 13.02.2020.
//  Copyright © 2020 Alex. All rights reserved.
//

import Foundation

enum PersistenceError: Error {
    case managedObjectContextNotFound
    case couldNotSaveObject
    case objectNotFound
}
