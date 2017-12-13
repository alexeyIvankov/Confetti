//
//  ViewConfetti.swift
//  Confetti
//
//  Created by Alexey Ivankov on 12.12.2017.
//  Copyright © 2017 Alexey Ivankov. All rights reserved.
//

import Foundation
import UIKit

open class ViewConfetti : UIView, Confetti, ConfettiContainer {
    @IBInspectable public var congettiID:String?
    
    //MARK: - Confetti
    public func apply(design: ConfettiDesign) {
        
        if let viewDesign = design as? ViewDesign{
            
            if viewDesign.backgroundColor  != nil {
                self.backgroundColor = viewDesign.backgroundColor
            }
        }
    }
    
    //MARK: - ConfettiContainer
    public func applyAll(designs: [ConfettiDesign]) {
     
        for design in designs{
            self.applySubviews(design: design, views: [self])
        }
    }
    
    private func applySubviews(design:ConfettiDesign, views:[UIView]){
        
        for view in views{
            
            if let confetti = view as? Confetti{
                
                if confetti.congettiID != nil, design.congettiID == confetti.congettiID!{
                     confetti.apply(design:design)
                }
            }
        
            if view.subviews.count > 0{
                applySubviews(design: design, views: view.subviews)
            }
        }
        
    }
}
