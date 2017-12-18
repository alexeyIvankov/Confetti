//
//  UINavigationBar+Confetti.swift
//  Confetti
//
//  Created by Alexey Ivankov on 18.12.2017.
//  Copyright © 2017 Alexey Ivankov. All rights reserved.
//

import Foundation
import UIKit

extension UINavigationBar {
    
    
    public func applyNavigation(design:ConfettiDesign){
        
        if let layerDesign = design as? NavigationBarDesign{
            
            if layerDesign.barStyle != nil{
                self.barStyle = layerDesign.barStyle!
            }
            
            if layerDesign.isTranslucent != nil {
                self.isTranslucent = layerDesign.isTranslucent!
            }
            
            if layerDesign.prefersLargeTitles != nil {
                self.prefersLargeTitles = layerDesign.prefersLargeTitles!
            }
            
            if layerDesign.tintColor != nil {
                self.tintColor = layerDesign.tintColor!
            }
            
            if layerDesign.barTintColor != nil {
                self.barTintColor = layerDesign.barTintColor!
            }
            
            if layerDesign.shadowImage != nil {
                self.shadowImage = layerDesign.shadowImage!
            }
            
            if layerDesign.backgroundImage != nil {
                
                for (image, barPosition, barMetric) in layerDesign.backgroundImage!{
                    
                    if barPosition != nil {
                        self.setBackgroundImage(image, for: barPosition!, barMetrics: barMetric)
                    }
                    else{
                        self.setBackgroundImage(image, for: barMetric)
                    }
                }
            }
            
            if layerDesign.backIndicatorImage != nil {
                self.backIndicatorImage = layerDesign.backIndicatorImage!
            }
            
            if layerDesign.backIndicatorTransitionMaskImage != nil {
                self.backIndicatorTransitionMaskImage = layerDesign.backIndicatorTransitionMaskImage!
            }
        }
    }
}

