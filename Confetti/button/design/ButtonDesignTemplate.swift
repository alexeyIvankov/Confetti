//
//  ButtonDesignTemplate.swift
//  Confetti
//
//  Created by Alexey Ivankov on 13.12.2017.
//  Copyright © 2017 Alexey Ivankov. All rights reserved.
//

import Foundation
import UIKit

public class ButtonDesignTemplate : ButtonDesign {
    
    public var titleColor: (UIColor, UIControlState)?
    
    public var image: (UIImage, UIControlState)?
    
    public var backgroundImage: (UIImage, UIControlState)?
    
    public var backgroundColor: UIColor?
    
    public var congettiID: String
    
    required public init(congettiID: String){
        self.congettiID = congettiID
    }
    
}
