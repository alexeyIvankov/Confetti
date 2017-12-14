//
//  UILayer+Confetti.swift
//  Confetti
//
//  Created by Alexey Ivankov on 14.12.2017.
//  Copyright © 2017 Alexey Ivankov. All rights reserved.
//

import Foundation
import UIKit

extension CALayer {
    
    public func applyLayer(design:ConfettiDesign){
        
        if let layerDesign = design as? LayerDesign{
            
            if layerDesign.borderColor != nil {
                self.borderColor = layerDesign.borderColor!.cgColor
            }
            
            if layerDesign.borderWidth != nil {
                self.borderWidth = CGFloat(layerDesign.borderWidth!)
            }
            
            if layerDesign.cornerRadius != nil {
                self.cornerRadius = CGFloat(layerDesign.cornerRadius!)
            }
            
            if layerDesign.shadowColor != nil {
                self.shadowColor = layerDesign.shadowColor!.cgColor
            }
        }
    }
    
}
