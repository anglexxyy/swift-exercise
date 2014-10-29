/*
//
//  strongreference.swift
//  ARCExercise
//
//  Created by NKO on 14-10-29.
//  Copyright (c) 2014年 NKO. All rights reserved.
//

//强应用测试
//在实际开发中不建议使用这种强引用关系，很容易导致内存溢出

import Foundation

class Person {
    var name:String
    
    var aprtment: Apartment?// = Apartment(number: 1000)
    
    init(name:String) {
        self.name = name
        println("Person : \(name) is initing")
    }
    
    deinit {
        println("Person : \(name) is deiniting")
    }
}

class Apartment {
    var number:Int
    
    var person: Person?// = Person(name: "test")
    
    init(number:Int) {
        self.number = number
        println("Apartment number #\(number) is initing")
    }
    
    deinit {
        println("Apartment number #\(number) is deiniting")
    }
}

var jack: Person?
jack = Person(name: "Jack")
var number1:Apartment?
number1 =  Apartment(number: 1001)

jack!.aprtment = number1
number1!.person = jack

jack = nil
number1 = nil

//jack!.aprtment = number1
//number1!.person = jack
*/
