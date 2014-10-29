// Playground - noun: a place where people can play

import Cocoa
import Foundation

//var str = "Hello, playground"


class Person {
    let name = "Jack"
    init(name:String) {
        self.name = name
//        var message = "\(name) is being deiniting"
        println("\(name) is being initing")

    }
    
    var aprtment:Apartment?
    
    deinit {
//        var message = "\(name) is being deiniting"
        println("\(name) is being deiniting")
    }
}

class Apartment {
    let number:Int = 0
    init (number:Int) {
        self.number = number
        println("\(number)'s Apartment is initing")
    }
    var person : Person?
    
    weak var tenant:Person?
    
    deinit
    {
        println("\(number)'s Apartment is deiniting")
    }
}

var stiven :Person? = Person(name: "Stiven")
stiven = nil
//var number73:Apartment? = Apartment(number: 73)

//stiven!.aprtment = number73
//number73!.person = stiven
//number73!.tenant = stiven

//stiven = nil
//number73 = nil

stiven = nil






