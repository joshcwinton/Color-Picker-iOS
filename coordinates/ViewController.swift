//
//  ViewController.swift
//  coordinates
//
//  Created by Josh Winton on 12/5/16.
//  Copyright © 2016 MyOrganization. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var displayx: UILabel!
    @IBOutlet weak var displayy: UILabel!
    @IBOutlet weak var displayz: UILabel!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first{
            let position = touch.location(in: self.view)
            print("x:", position.x)
            print("y:", position.y)
            displayx.text! = "red: " + String(describing: Int(position.x.truncatingRemainder(dividingBy: 255)))
            displayy.text! = "green: " + String(describing: Int(position.y.truncatingRemainder(dividingBy: 255)))
            displayz.text! = "blue: " + String(describing: Int((position.y+position.x).truncatingRemainder(dividingBy: 255)))
            let blueColor = UIColor(red: position.x.truncatingRemainder(dividingBy: 255.0)/255.0, green: position.y.truncatingRemainder(dividingBy: 255.0)/255.0, blue: (position.y+position.x).truncatingRemainder(dividingBy: 255.0)/255.0, alpha: 1.0)
            view.backgroundColor = blueColor
        }

    }
}

