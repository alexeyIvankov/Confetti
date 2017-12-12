//
//  ButtonConfetti.swift
//  Confetti
//
//  Created by Alexey Ivankov on 12.12.2017.
//  Copyright © 2017 Alexey Ivankov. All rights reserved.
//

import Foundation
import UIKit

public class ButtonConfetti : UIButton, Confetti {
    @IBInspectable public var congettiID:String?
    
    public func apply(design:ConfettiDesign)
    {
        if let buttonDesign = design as? ButtonDesign{
            
            if buttonDesign.backgroundColor != nil{
                self.backgroundColor = buttonDesign.backgroundColor
            }
            
            if buttonDesign.titleColor != nil{
                self.setTitleColor(buttonDesign.titleColor!.0, for: buttonDesign.titleColor!.1)
            }
            
            if buttonDesign.image != nil{
                self.setImage(buttonDesign.image!.0, for: buttonDesign.image!.1)
            }
            
        }
        
    }
}
