//
//  LabelConfetti.swift
//  Confetti
//
//  Created by Alexey Ivankov on 12.12.2017.
//  Copyright © 2017 Alexey Ivankov. All rights reserved.
//

import Foundation
import UIKit

public class LabelConfetti : UILabel, Confetti {
    
    @IBInspectable public var congettiID:String?
    
    public func apply(design: ConfettiDesign) {
        
        if let labelDesign = design as? LabelDesign {
            
            if labelDesign.backgroundColor != nil {
                self.backgroundColor = labelDesign.backgroundColor
            }
            
            if labelDesign.font != nil{
                self.font = labelDesign.font
            }
            
            if labelDesign.textColor != nil {
                self.textColor = labelDesign.textColor
            }
        }
        
    }
}
