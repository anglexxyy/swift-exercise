
/*
/*
********* 无主引用和若引用结合测试 **************************************
两个属性都必须有值,且初始化完成后不能为 nil。这种场景下,则 要一个类用无主引用属性,另一个类用隐式展开的可选属性
什么是隐式展开的可选属性 'class!'
*/
//
//  main.swift
//  ARCExercise
//
//  Created by NKO on 14-10-29.
//  Copyright (c) 2014年 NKO. All rights reserved.
//

import Foundation

class Country {
    let name:String
    let capitalcity:City!
    init(name:String, capitalName:String) {
        self.name = name
        self.capitalcity = City(name: capitalName, country: self)
        println("Country:\(name) is initing")
    }
    deinit{
        println("Country:\(name) is deiniting")
    }
}

class City {
    let name:String
    unowned let country:Country
    init(name:String, country:Country){
        self.name = name
        self.country = country
        println("City:\(name) is initing")
    }
    deinit{
        println("City:\(name) is deiniting")
    }
}

var country :Country? = Country(name: "cn", capitalName: "bj")
country.capitalcity.country
country = nil
*/