//
//  LabelDesign.swift
//  Confetti
//
//  Created by Alexey Ivankov on 12.12.2017.
//  Copyright © 2017 Alexey Ivankov. All rights reserved.
//

import Foundation
import UIKit

public protocol LabelDesign : ViewDesign{
    
    var font:UIFont? { get }
    var textColor:UIColor? { get }
    
}
