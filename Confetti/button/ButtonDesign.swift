//
//  ButtonDesign.swift
//  Confetti
//
//  Created by Alexey Ivankov on 14.12.2017.
//  Copyright © 2017 Alexey Ivankov. All rights reserved.
//

import Foundation
import UIKit

open class ButtonDesign : ViewDesign {
    
    public var titleColor: [(UIColor, UIControlState)]?
    public var titleShadowColor: [(UIColor, UIControlState)]?
    public var title: [(String, UIControlState)]?
    public var attributedTitle: [(NSAttributedString, UIControlState)]?
   
    public var image: [(UIImage, UIControlState)]?
    public var backgroundImage: [(UIImage, UIControlState)]?
    
    public var titleLabelDesign:LabelDesign?
    
}

