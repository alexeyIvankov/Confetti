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

    @IBOutlet var bt:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()        
        self.view.apply(designs: buildDesign())
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func buildDesign() -> [ConfettiDesign]{
        
        var design:[ConfettiDesign] = []
        
        let button1Design:ButtonDesign = ButtonDesign(confettiID: "button1")
        button1Design.backgroundColor = UIColor.blue
        button1Design.title = ("кнопка 1", UIControlState.normal)
    
        let button2Design:ButtonDesign = ButtonDesign(confettiID: "button2")
        button2Design.backgroundColor = UIColor.green
        
        let button3Design:ButtonDesign = ButtonDesign(confettiID: "button3")
        button3Design.backgroundColor = UIColor.yellow
        
        design.append(button1Design)
        design.append(button2Design)
        design.append(button3Design)
        
        return design
    }
    
}

