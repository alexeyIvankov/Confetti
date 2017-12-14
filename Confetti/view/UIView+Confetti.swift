//
//  UIView+Condeti.swift
//  Confetti
//
//  Created by Alexey Ivankov on 14.12.2017.
//  Copyright © 2017 Alexey Ivankov. All rights reserved.
//

import Foundation
import UIKit

extension UIView : Confetti, ConfettiContainer {
    
    //MARK: - Confetti
    public func apply(design:ConfettiDesign){
        
        if let viewDesign = design as? ViewDesign {
            
            if viewDesign.layerDesign != nil{
                self.layer.applyLayer(design: viewDesign.layerDesign!)
            }
            
            if viewDesign.backgroundColor != nil{
                self.backgroundColor = viewDesign.backgroundColor
            }
            
            if viewDesign.alpha != nil{
                self.alpha = CGFloat(viewDesign.alpha!)
            }
            
            if viewDesign.tintColor != nil {
                self.tintColor = viewDesign.tintColor
            }
        }
    }
    
    //MARK: - ConfettiContainer
    public func apply(designs: [ConfettiDesign]) {
        
        for design in designs{
            self.applySubviews(design: design, views: [self])
        }
    }
    
    
    private func applySubviews(design:ConfettiDesign, views:[UIView]){
        
        for view in views{
            
            if view.accessibilityIdentifier != nil, view.accessibilityIdentifier == design.confettiID
            {
                if let button =  view as? UIButton {
                    button.applyButton(design: design)
                }
                else if let label = view as? UILabel {
                    label.applyLabel(design: design)
                }
                else{
                    view.apply(design: design)
                }
            }
            
            if view.subviews.count > 0 {
                applySubviews(design: design, views: view.subviews)
            }
        }
    }
}
