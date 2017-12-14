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
                
                for (value, state) in buttonDesign.titleColor!{
                    self.setTitleColor(value, for: state)
                }
            }
            
            if buttonDesign.titleShadowColor != nil{
                
                for (value, state) in buttonDesign.titleShadowColor!{
                     self.setTitleShadowColor(value, for: state)
                }
            }
            
            if buttonDesign.title != nil{
                
                for (value, state) in buttonDesign.title!{
                    self.setTitle(value, for: state)
                }
            }
            
            if buttonDesign.attributedTitle != nil{
                
                for (value, state) in buttonDesign.attributedTitle!{
                    self.setAttributedTitle(value, for: state)
                }
            }
            
            if buttonDesign.image != nil{
                
                for (value, state) in buttonDesign.image!{
                    self.setImage(value, for: state)
                }
            }
            
            if buttonDesign.backgroundImage != nil{
                
                for (value, state) in buttonDesign.backgroundImage!{
                    self.setBackgroundImage(value, for: state)
                }
            }
            
            if buttonDesign.titleLabelDesign != nil{
                self.titleLabel?.applyLabel(design: buttonDesign.titleLabelDesign!)
            }
        }
    }
}

