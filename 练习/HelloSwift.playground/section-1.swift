// Playground - noun: a place where people can play

import Cocoa
//import XCTest
/*
var str = "Hello, playground"

var doublevar:Float = 4

let label = "this width is "
let width = 40
let widthlable = label + String(width)
//var qeustion = label + width 
let apples = 3
let pears = 5
let applesummary = "i have \(apples) apples"
let fruitsummay = "I have \(apples + pears) pieces of fruit"
//下标访问
var shoppingList = ["apple","water","book","pen"]
shoppingList[0]
var occupations =
[
    "Wuhan":"关山",
    "xinzhou":"凤凰"
]
occupations["zx"] = "钟祥"
occupations["Wuhan"]
occupations["test"]
//空字典
let emptyArray = [String]()
var emptyDictionary = Dictionary<String,String>()
//控制流
//申明可选
var optionnalString:String? //= "我是可选类型"
var optionnalName:String? = "Jack"
var greeting = "WelCome"
//if else
if let name = optionnalName
{
    greeting += " \(name)"
}
optionnalName = nil
if let name = optionnalName
{
    greeting += " \(name)"
}
else{
    greeting = "\(optionnalName) is Nil"
}
//swith 关键字 fallthrough
let vegetable = "red pepper"
switch vegetable{
case "celery" :
    let vegetablecomment = ""
case let x where x.hasSuffix("pepper"):
    let vegetablecomment = "is it a \(x)"
    case "","":
    let vegetablecomment = "that would make a good tea"
default:
    let vegetablecomment = ""
}
//for in
let interestingNumbers =
[
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25]
]
var largest:Int = 0
var largestalphbat:String?
for (key,numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            largestalphbat = key
        }
    }
}
largest
largestalphbat!

var summer = 0
for i in 1...4 {
    summer += i
}
summer
summer = 0
for i in 1..<4 {
    summer += i
}
summer
//闭包
var numbers2 = [2, 3, 4, 5]
numbers2.map({
    (number:Int) -> Int in
    let result = number * 3
    return result })
var results = numbers2.map({ $0 * 3 })
results
results = numbers2.map({if $0 % 2 != 0 { return 0 };return $0 })
results


numbers2.filter({
    (number:Int) -> Bool in
        number > 3
    })
var temp = numbers2.filter({ $0 > 3 })
temp
//numbers2.reduce({(number) -> Void in let result = number}, combine:)
var t = numbers2.reduce(8, combine: { $0 > 1 ? $1 : $1})
t
t = numbers2.reduce(1, combine: { $1 > 3 ? $1 + $1 : $0 })
t
t = numbers2.reduce(1, combine: {
    var result = $1
    if $1 > 3
    {
        result = $0
        result += $1
    }
    else { result = 0}
    return result
    })
t
*/
/*
//类和对象
class Shape {
    // 申明变量
    var numberOfSides = 0
    //方法
    func simpleDescription() -> String {
        return "a Shape with \(numberOfSides) sides"
    }
}
//对象实利
var shape:Shape = Shape()
shape.numberOfSides = 7
shape.simpleDescription()
*/
//构造函数，每个属性都需要赋值，无论通过构造函数还是变量赋值
class Shape {
    // 申明变量
    var numberOfSides:Double = 0
    //通过构造函数申明
    var name:String
    //方法
    func simpleDescription() -> String {
        return "a Shape with \(numberOfSides) sides"
    }
    //构造函数
    init(name:String){
        self.name = name
    }
    //析构函数
    deinit{
        //
        println("调用析构器，释放对象时需要做写什么...")
    }
}
var shape:Shape? = Shape(name: "name")
shape = nil
//println("test")
//shape!.simpleDescription()

//继承
class Square : Shape {
    var sideLength:Double
    init(sideLength:Double, name: String){
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return numberOfSides * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A Square with sides of length \(self.sideLength)"
    }
}


let test = Square(sideLength: 4, name: "")
test.simpleDescription()
test.area()

//属性 getter setter
class EquilareralTriagle : Shape {
    var sideLength:Double
    init(sideLength:Double, name: String){
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return numberOfSides * sideLength
    }
    
    var perimeter: Double {
    get{
        return self.sideLength * 3
    }
    set(value){
        self.sideLength = value / 3
    }
    }
    
    override func simpleDescription() -> String {
        return "A equilateral triagle with sides of length \(self.sideLength)"
    }
}

var triagle = EquilareralTriagle(sideLength: 4.0, name: "A Triagla")
triagle.perimeter
triagle.perimeter = 9.9

extension Double {
    func toString() -> String {
        assert(self < 9.0, "大于9都数字不能使用toString")
        return self.description
    }
}
var a:Double = 1.25e-2
a = 8.9
a.toString()





