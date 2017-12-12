//
//  Confetti.swift
//  Confetti
//
//  Created by Alexey Ivankov on 12.12.2017.
//  Copyright © 2017 Alexey Ivankov. All rights reserved.
//

import Foundation
import UIKit

public protocol Confetti : class {
   
    var congettiID:String? { get set}
    func apply(design:ConfettiDesign)
}

public protocol ConfettiContainer {
    func applyAll(designs:[ConfettiDesign])
}
