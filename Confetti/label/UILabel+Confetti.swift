//
//  UILabel+Confetti.swift
//  Confetti
//
//  Created by Alexey Ivankov on 14.12.2017.
//  Copyright © 2017 Alexey Ivankov. All rights reserved.
//

import Foundation
import UIKit

extension UILabel  {
 
    public func applyLabel(design: ConfettiDesign) {
        
        if let labelDesign = design as? LabelDesign {
            
             self.apply(design: design)
            
            if labelDesign.font != nil{
                self.font = labelDesign.font
            }
            
            if labelDesign.text != nil{
                self.text = labelDesign.text
            }
            
            if labelDesign.textColor != nil {
                self.textColor = labelDesign.textColor
            }
            
            if labelDesign.schadowColor != nil{
                self.shadowColor = labelDesign.schadowColor
            }
            
            if labelDesign.textAlignment != nil{
                self.textAlignment = labelDesign.textAlignment!
            }
            
            if labelDesign.lineBreakMode != nil{
                self.lineBreakMode = labelDesign.lineBreakMode!
            }
            
            if labelDesign.attributedText != nil{
                self.attributedText = labelDesign.attributedText
            }
            
            if labelDesign.highlightedTextColor != nil{
                self.highlightedTextColor = labelDesign.highlightedTextColor
            }
            
            if labelDesign.numberOfLines != nil{
                self.numberOfLines = labelDesign.numberOfLines!
            }
        }
    }
}


