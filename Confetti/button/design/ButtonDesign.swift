//
//  ButtonDesign.swift
//  Confetti
//
//  Created by Alexey Ivankov on 12.12.2017.
//  Copyright © 2017 Alexey Ivankov. All rights reserved.
//

import Foundation
import UIKit

public protocol ButtonDesign : ViewDesign{
    
    var titleColor:(UIColor, UIControlState)? { get }
    var image:(UIImage, UIControlState)? { get }
    var backgroundImage:(UIImage, UIControlState)? { get }
    
}
