//
//  NavigationBarDesign.swift
//  Confetti
//
//  Created by Alexey Ivankov on 18.12.2017.
//  Copyright © 2017 Alexey Ivankov. All rights reserved.
//

import Foundation
import UIKit

open class NavigationBarDesign : ConfettiDesign  {
    
    public var confettiID: String = " "
    public var barStyle: UIBarStyle?
    public var isTranslucent: Bool?
    public var prefersLargeTitles: Bool?
    public var tintColor: UIColor?
    public var barTintColor: UIColor?
    public var shadowImage: UIImage?
    public var backgroundImage:[(UIImage, UIBarPosition?, UIBarMetrics)]?
    public var backIndicatorImage: UIImage?
    public var backIndicatorTransitionMaskImage: UIImage?
}

