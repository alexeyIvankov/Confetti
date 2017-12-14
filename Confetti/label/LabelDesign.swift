//
//  LabelDesign.swift
//  Confetti
//
//  Created by Alexey Ivankov on 14.12.2017.
//  Copyright © 2017 Alexey Ivankov. All rights reserved.
//

import Foundation
import UIKit

open class LabelDesign : ViewDesign {
    
    public var font:UIFont?
    public var text:String?
    public var textColor:UIColor?
    public var schadowColor:UIColor?
    public var textAlignment: NSTextAlignment?
    public var lineBreakMode: NSLineBreakMode?
    public var attributedText: NSAttributedString?
    public var highlightedTextColor: UIColor?
    public var numberOfLines: Int?
}

