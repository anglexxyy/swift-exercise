//
//  CalcLogic.swift
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

import Foundation

enum Operator : Int {
    case Plus = 200, Minus, Multiply, Divide
    case Default = 0
}

class CalcLogic {
    
    //保存上一次值
    var lastRetainValue : Double
    //最近一次选择的操作符（加、减、乘、除）
    var operator : Operator
    //临时保存MainLabel内容，为true时候，输入数字MainLabel内容被清为0
    var isMainLabelTextTemporary : Bool
    
    /*
    * 构造器
    */
    init () {
        println("CalcLogic init")
        lastRetainValue = 0.0
        isMainLabelTextTemporary  = false
        operator = .Default
    }
    
    /*
    * 析构器
    */
    deinit {
        println("CalcLogic deinit")
    }
    
    /*
    * 更新主标签内容
    */
    func updateMainLabelStringByNumberTag(tag : Int, withMainLabelString mainLabelString : String)->String {
        
        var string = mainLabelString
        
        if (isMainLabelTextTemporary)  {
            string = "0"
            isMainLabelTextTemporary = false
        }
        
        let optNumber = tag - 100
        //把String转为double
        var mainLabelDouble = (string as NSString).doubleValue
        
        if mainLabelDouble == 0 && doesStringContainDecimal(string) == false {
            return String(optNumber)
        }
        let resultString = string + String(optNumber)
        
        return resultString
    }
    
    
    /*
    * 判断是否字符串中包含小数点
    */
    func doesStringContainDecimal(string : String)->Bool {
        for ch in string {
            if ch == "." {
                return true
            }
        }
        return false
    }
    
    /*
    * 点击操作符时候的计算
    */
    func calculateByTag(tag : Int, withMainLabelString mainLabelString : String)->String {
        
        //把String转为为double
        var currentValue = (mainLabelString as NSString).doubleValue
        
        switch operator {
        case .Plus:
            lastRetainValue += currentValue
        case .Minus:
            lastRetainValue -= currentValue
        case .Multiply:
            lastRetainValue *= currentValue
        case .Divide:
            if currentValue != 0 {
                lastRetainValue /= currentValue
            } else {
                operator = .Default
                isMainLabelTextTemporary = true
                return "错误"
            }
        default:
            lastRetainValue = currentValue
        }
        
        //记录当前操作符，下次计算时候使用
        operator = Operator.fromRaw(tag)!
        
        // let resultString = String(lastRetainValue)   //能够.00情况去掉
        let resultString = NSString(format: "%g", lastRetainValue)
        
        isMainLabelTextTemporary = true
        
        return resultString
    }
    
    func clean() {
        lastRetainValue = 0.0
        isMainLabelTextTemporary  = false
        operator = .Default
    }
}
