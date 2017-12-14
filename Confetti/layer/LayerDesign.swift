//
//  LayerDesign.swift
//  Confetti
//
//  Created by Alexey Ivankov on 14.12.2017.
//  Copyright © 2017 Alexey Ivankov. All rights reserved.
//

import Foundation
import UIKit

open class LayerDesign : ConfettiDesign  {
   
    public var confettiID: String
    public var cornerRadius:Float?
    public var borderWidth:Float?
    public var borderColor:UIColor?
    public var shadowColor:UIColor?
    
    required public init(confettiID: String){
        self.confettiID = confettiID
    }
}
