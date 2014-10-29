//
//  CalcLogic.swift
//  Calculator
//
//  Created by NKO on 14-10-28.
//  Copyright (c) 2014年 NKO. All rights reserved.
//

import Foundation

enum Operator : Int {
    case Plus = 200, Minus, Muliply, Divide
    case Default = 0
}

class CalcLogic {
    var lastRetainValue : Double
    var operator : Operator
    var isMainLabelTextTemporary : Bool
    
    init() {
        lastRetainValue = 0.0
        operator = Operator.Default
        isMainLabelTextTemporary = false
    }
    
    deinit {
        println("Calalogic deinit")
    }
    
    func updateMainLabelStringByNumberTag(#tag:Int, mainLabelsString:String) -> String {
        var string = mainLabelsString
        if isMainLabelTextTemporary {
            string = "0"
            isMainLabelTextTemporary = false
        }
        let optNumber = tag - 100
        var mainlabelDouble = (string as NSString).doubleValue
        if mainlabelDouble == 0 && !doesStringContainDecimal(string) {
            return String(optNumber)
        }
        let resultString = string + String(optNumber)
        return resultString
    }
    
    //判断是否包含.
    func doesStringContainDecimal(string:String) -> Bool {
        return string.componentsSeparatedByString(".").count >= 2
        //return fasle
    }
    
    func calculateByTag(tag:Int, mainLablString:String) -> String {
        var currentValue = (mainLablString as NSString).doubleValue
        
        switch operator {
        case .Plus:
            lastRetainValue += currentValue
        case .Minus:
            lastRetainValue -= currentValue
        case .Muliply:
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
        println(operator.toRaw())
        operator = Operator.fromRaw(tag)!
//        print(operator.toRaw())
        
        let resultString = NSString(format: "%g", lastRetainValue)
        
        isMainLabelTextTemporary = true
        
        return resultString
    }
    
    func clean() {
        lastRetainValue = 0.0
        isMainLabelTextTemporary = false
        operator = Operator.Default
    }
}

