//
//  ViewController.swift
//  Calculator
//
//  Created by tonymacmini on 14-7-3.
//  Copyright (c) 2014年 tonymacmini. All rights reserved.
//  本书网站：http://www.51work6.com/swift.php
//  智捷iOS课堂在线课堂：http://v.51work6.com
//  智捷iOS课堂新浪微博：http://weibo.com/u/3215753973
//  智捷iOS课堂微信公共账号：智捷iOS课堂
//  作者微博：http://weibo.com/516inc
//  官方csdn博客：http://blog.csdn.net/tonny_guan
//  Swift语言QQ讨论群：362298485 联系QQ：1575716557 邮箱：jylong06@163.com
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var mainLabel: UILabel!
    
    var logic : CalcLogic!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.text = "0"
        logic = CalcLogic()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        logic = nil
    }
    
    @IBAction func operandPressed(sender: AnyObject) {
        var btn : UIButton = sender as UIButton
        mainLabel.text =  logic.calculateByTag(btn.tag, withMainLabelString: mainLabel.text)
    }
    
    @IBAction func equalsPressed(sender: AnyObject) {
        var btn : UIButton = sender as UIButton
        mainLabel.text =  logic.calculateByTag(btn.tag, withMainLabelString: mainLabel.text)
    }
    
    @IBAction func clearPressed(sender: AnyObject) {
        mainLabel.text = "0";
        logic.clean()
    }
    
    @IBAction func decimalPressed(sender: AnyObject) {
        
        if logic.doesStringContainDecimal(mainLabel.text) == false {
            let string = mainLabel.text + "."
            mainLabel.text = string
        }
    }
    
    @IBAction func numberButtonPressed(sender: AnyObject) {
        var btn : UIButton = sender as UIButton
        mainLabel.text =  logic.updateMainLabelStringByNumberTag(btn.tag, withMainLabelString: mainLabel.text)
    }
}

