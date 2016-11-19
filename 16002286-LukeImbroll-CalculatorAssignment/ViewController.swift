//
//  ViewController.swift
//  16002286-LukeImbroll-CalculatorAssignment
//
//  Created by Luke Imbroll on 19/11/2016.
//  Copyright © 2016 Luke Imbroll. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var Number1: UILabel!
    @IBOutlet var Number2: UILabel!
    @IBOutlet var Number3: UILabel!
    @IBOutlet var UIViewNumbers: UIView!
    @IBOutlet var UIViewEquation: UIView!
    @IBOutlet var UIViewApples: UIView!
    
    @IBOutlet var Num0: UIButton!
    @IBOutlet var Num1: UIButton!
    @IBOutlet var Num2: UIButton!
    @IBOutlet var Num3: UIButton!
    @IBOutlet var Num4: UIButton!
    @IBOutlet var Num5: UIButton!
    @IBOutlet var Num6: UIButton!
    @IBOutlet var Num7: UIButton!
    @IBOutlet var Num8: UIButton!
    @IBOutlet var Num9: UIButton!
    
    var randomnumber1 = Int(arc4random_uniform(5))
    var randomnumber2 = Int(arc4random_uniform(5))
    
    @IBAction func buttonPress(_ sender: UIButton) {
        var answer : Int?
        answer = Int(sender.titleLabel!.text!)
        if ((randomnumber1+randomnumber2) == answer){
            Number3.text = sender.titleLabel!.text
            UIViewNumbers.isHidden = true
            UIViewApples.isHidden = true
        }else{
            Number3.textColor = UIColor.red
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Random Number 1
        Number1.text = String(randomnumber1)
        
        //Random Number 2
        Number2.text = String(randomnumber2)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

