// Playground - noun: a place where people can play

import Cocoa

/*
func rectagleArea(width:Double,height:Double) -> Double
{
    let area = width * height
    return area
}
println("320X480的面积:\(rectagleArea(320,480))")
*/
/*
func rectagleArea1(#width:Double,#height:Double) -> Double
{
    let area = width * height
    return area
}
println("320X480的面积:\(rectagleArea1(width:320,height:480))")

func rectagleArea2(H width:Double,W height:Double) -> Double
{
    let area = width * height
    return area
}
println("320X480的面积:\(rectagleArea2(H: 320, W: 480))")

//默认参数
func mackCoffee(type : String = "卡布奇洛") -> String
{
return "制作一杯\(type)咖啡"
}

let coffee1 = mackCoffee();
let coffee2 = mackCoffee(type: "拿铁")

*/

/*
//可变参数
func sum (#numbers:Double...) -> String
{
    var total : Double = 0
    for number in numbers
    {
        total += number
    }
    return total.description
}
sum(numbers: 1,2,3,4,5,6,7)
*/
/*
//参数传递引用
func increment(inout #value:Double,#amount:Double){
    value+=amount
}
var temp = 10.0
increment(value: &temp,amount:1.0)

//无返回值函数
func noResultMethod1(#arg:AnyObject?){}
func noResultMethod2(#arg:AnyObject?) -> (){}
func noResultMethod3(#arg:AnyObject?) -> Void{}

noResultMethod1(arg: nil)
println("123")
//多值返回
func position(#dt:Double, #speed:(x:Int,y:Int)) -> (x:Int,y:Int)
{
    var posx:Int = speed.x * Int(dt)
    var posy:Int = speed.y * Int(dt)
    return (posx,posy)
}

let move = position(dt:60.0,speed:(10,-5))
*/


func rectangleArea(W width:Double,H height:Double) -> Double
{
    return width * height
}

func triangleArea(B button:Double,H height:Double) -> Double
{
    return 0.5 * button * height
}
/*
/*
//函数作为返回值
func getArea(#type:String) -> (Double,Double)->Double
{
    var returnfunc:(Double,Double)->Double;
    switch (type)
    {
        case "rect":
            returnfunc = rectangleArea;
        case "tria":
            returnfunc = triangleArea;
        default:
            returnfunc = rectangleArea;
    }
    return returnfunc
}

getArea(type: "rect")(1,2)
var area = getArea(type: "tria")
area(2,4)
*/
//函数作为参数使用
func getAreaByFunc(#funcname:(Double,Double)->Double,#arg1:Double,#arg2:Double) ->Double
{
    return funcname(arg1,arg2)
}

getAreaByFunc(funcname: rectangleArea, arg1: 10, arg2: 4)

*/

//嵌套函数
func calculate(#opr:String) -> (Int,Int) -> Int
{
    func add(a:Int,b:Int) -> Int {
        return a + b
    }
    func sub(a:Int,b:Int) -> Int {
        return a-b
    }
    switch (opr)
    {
        case "+":
            return add;
        case "-":
            return sub;
        default:
            return add;
    }
}
//var method = calculate(opr: "+")(1,2)
//method(1,2)
var method:(Int,Int)->Int = calculate(opr: "-")

method(3,4)

//泛型函数
func isEqual<T : Comparable>(a:T,b:T) -> Bool
{
    return a == b
}

var sequn:Array<Int> = [1,32,4,222,59,12,398,34,88]
var sequnresult = [Int]()
var max:Int = 0;
for var i=0;i < sequn.count;i++
{
    if sequn[i] > max {
        max = sequn[i]
    }
}
var s = enumerate(sequn)
while var t = s.next(){
    print("\(t.element)\t")
}
//sequnresult.append(max)
//sequnresult.sorted(<#isOrderedBefore: (T, T) -> Bool#>)








