/*
/*
********* 无主引用测试 **************************************
一个属性可以是 nil,另外一个属性不允许是 nil,并有可能产生强引用环。这种场景下不允许nil都属性使用无主引用
*/
//
//  main.swift
//  ARCExercise
//
//  Created by NKO on 14-10-29.
//  Copyright (c) 2014年 NKO. All rights reserved.
//

import Foundation

class Customer {
    let name:String
    var card: CreditCard?
    
    init(name:String) {
        self.name = name
        println("\(name) is being initing")
    }
    
    deinit {
        println("\(name) is being deiniting")
    }
}

class CreditCard {
    let number: Int
    
    unowned var customer : Customer
    
    init(number:Int, customer:Customer) {
        self.number = number
        self.customer = customer
        println("cart #\(number) is being initing")
    }
    
    deinit {
        println("cart #\(number) is being deiniting")
    }
}

var jack:Customer?
jack = Customer(name: "Jack")

jack!.card = CreditCard(number: 10001, customer: jack!)
//jack = nil
jack!.card = nil
*/
