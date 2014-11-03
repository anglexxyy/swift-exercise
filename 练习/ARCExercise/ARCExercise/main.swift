/*
********* 闭包都强环形引用 **************************************
[unowned self] in
*/
//
//  main.swift
//  ARCExercise
//
//  Created by NKO on 14-10-29.
//  Copyright (c) 2014年 NKO. All rights reserved.
//

import Foundation
class HTMLElement {
    let name:String
    let text:String?
    @lazy var asHTML: () -> String = {
        [unowned self] in
        if let text = self.text {
            return "<\(self.name)>\(text)</\(self.name)>"
        }else {
            return "</\(self.name)>"
        }
    }
    
    init(name:String,text:String? = nil) {
        self.name = name
        self.text = text
        println("\(name)'s HTML is initing")
    }
    
    deinit {
        println("\(name) is deiniting")
    }
}

var html:HTMLElement? = HTMLElement(name: "p", text: "Hello,World!")
println(html!.asHTML())
html = nil
//修改什么东西ß