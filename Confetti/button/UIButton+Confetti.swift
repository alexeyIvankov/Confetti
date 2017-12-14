//
//  UIButton+Confetti.swift
//  Confetti
//
//  Created by Alexey Ivankov on 14.12.2017.
//  Copyright © 2017 Alexey Ivankov. All rights reserved.
//

import Foundation
import UIKit

extension UIButton  {
    
    public func applyButton(design:ConfettiDesign)
    {
        if let buttonDesign = design as? ButtonDesign{
            
            self.apply(design: design)
            
            if buttonDesign.titleColor != nil{
                self.setTitleColor(buttonDesign.titleColor!.0, for: buttonDesign.titleColor!.1)
            }
            
            if buttonDesign.titleShadowColor != nil{
                self.setTitleShadowColor(buttonDesign.titleShadowColor!.0, for: buttonDesign.titleShadowColor!.1)
            }
            
            if buttonDesign.title != nil{
                self.setTitle(buttonDesign.title!.0, for: buttonDesign.title!.1)
            }
            
            if buttonDesign.attributedTitle != nil{
                self.setAttributedTitle(buttonDesign.attributedTitle!.0, for: buttonDesign.attributedTitle!.1)
            }
            
            if buttonDesign.image != nil{
                self.setImage(buttonDesign.image!.0, for: buttonDesign.image!.1)
            }
            
            if buttonDesign.backgroundImage != nil{
                self.setBackgroundImage(buttonDesign.backgroundImage!.0, for: buttonDesign.backgroundImage!.1)
            }
            
            if buttonDesign.titleLabelDesign != nil{
                self.titleLabel?.applyLabel(design: buttonDesign.titleLabelDesign!)
            }
        
        }
    }
}

