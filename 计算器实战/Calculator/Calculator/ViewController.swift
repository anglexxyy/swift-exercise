//
//  ViewController.swift
//  Calculator
//
//  Created by NKO on 14-10-28.
//  Copyright (c) 2014年 NKO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var mainLabel: UILabel!
    
    var logic:CalcLogic!
    
    @IBAction func numberButtonPressend(sender: AnyObject) {
        var btn = sender as UIButton
        mainLabel.text = logic.updateMainLabelStringByNumberTag(tag: btn.tag, mainLabelsString: mainLabel.text)
    }
    
    @IBAction func operandPressed(sender: AnyObject) {
        var btn = sender as UIButton
        mainLabel.text = logic.calculateByTag(btn.tag, mainLablString: mainLabel.text)
    }
    
    @IBAction func decimalPressed(sender: AnyObject) {
        if !logic.doesStringContainDecimal(mainLabel.text) {
            mainLabel.text = mainLabel.text + "."
        }
    }
    
    @IBAction func equalsPressed(sender: AnyObject) {
        var btn = sender as UIButton
        mainLabel.text = logic.calculateByTag(btn.tag, mainLablString: mainLabel.text)
    }
    
    @IBAction func clear(sender: AnyObject) {
        mainLabel.text = "0"
        logic.clean()
    }
    
    @IBOutlet var clearPressed: UIButton
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logic = CalcLogic()
        mainLabel.text = "0"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        logic = nil
        // Dispose of any resources that can be recreated.
    }


}

