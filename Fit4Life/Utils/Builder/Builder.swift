//
//  Builder.swift
//  Fit4Life
//
//  Created by Alex Bezkopylnyi on 2/3/20.
//  Copyright © 2020 Alex. All rights reserved.
//

import Foundation
import UIKit

final class Builder {
    private var window: UIWindow!
    
    func setKeyWindow(_ window: UIWindow) -> Builder {
        self.window = window
        return self
    }
    
    func build() {
        
    }
}
