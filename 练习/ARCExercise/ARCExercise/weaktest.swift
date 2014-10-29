/*
/*
********* 若引用测试 **************************************
*/
//
//  main.swift
//  ARCExercise
//
//  Created by NKO on 14-10-29.
//  Copyright (c) 2014年 NKO. All rights reserved.
//
//若引用测试
//两个属性的值都可能是 nil,并有可能产生强引用环。这种场景下适合使用弱引用
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
    
    //var person: Person?// = Person(name: "test")
    weak var tenant: Person?
    
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
number1!.tenant = jack

println(number1!.tenant)
number1!.tenant = nil
println(number1!.tenant)
println(jack!.aprtment)
jack!.aprtment = nil
println(jack!.aprtment)

number1 = nil
jack = nil
//jack!.aprtment = nil
//jack = nil

*/
