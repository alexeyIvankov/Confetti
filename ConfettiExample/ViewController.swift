//
//  ViewController.swift
//  ConfettiExample
//
//  Created by Alexey Ivankov on 12.12.2017.
//  Copyright © 2017 Alexey Ivankov. All rights reserved.
//

import UIKit
import Confetti

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let container = self.view as? ConfettiContainer {
            container.applyAll(designs: buildDesign())
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func buildDesign() -> [ConfettiDesign]{
        
        var design:[ConfettiDesign] = []
        
        let button1Design:ButtonDesignTemplate = ButtonDesignTemplate(congettiID: "button1")
        button1Design.backgroundColor = UIColor.blue
    
        let button2Design:ButtonDesignTemplate = ButtonDesignTemplate(congettiID: "button2")
        button2Design.backgroundColor = UIColor.green
        
        let button3Design:ButtonDesignTemplate = ButtonDesignTemplate(congettiID: "button3")
        button3Design.backgroundColor = UIColor.yellow
        
        design.append(button1Design)
        design.append(button2Design)
        design.append(button3Design)
        
        return design
    }
    
}

