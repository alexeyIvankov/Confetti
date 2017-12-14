//
//  ViewDesign.swift
//  Confetti
//
//  Created by Alexey Ivankov on 14.12.2017.
//  Copyright © 2017 Alexey Ivankov. All rights reserved.
//

import Foundation
import UIKit

open class ViewDesign : ConfettiDesign {
    
    public var confettiID: String
    public var backgroundColor:UIColor?
    public var tintColor:UIColor?
    public var alpha:Float?
    
    required public init(confettiID: String){
        self.confettiID = confettiID
    }
}
