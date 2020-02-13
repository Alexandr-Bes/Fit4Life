//
//  Utility.swift
//  Fit4Life
//
//  Created by Alexandr on 13.02.2020.
//  Copyright © 2020 Alex. All rights reserved.
//

import Foundation

class Utility {
    
}

func executeOnMainThread(_ clouser: @escaping ()->()) {
    if Thread.isMainThread {
        clouser()
    } else {
        DispatchQueue.main.async(execute: clouser)
    }
}

func executeOnBackgroundThread(_ clouser: @escaping ()->()) {
    if Thread.isMainThread {
        DispatchQueue.global().async(execute: clouser)
    } else {
        clouser()
    }
}
