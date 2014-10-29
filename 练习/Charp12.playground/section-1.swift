// Playground - noun: a place where people can play

import Cocoa
import XCTest

struct Department
{
    var no:Int = 0
    var name:String = String()
}
/*


class Employee
{
    let no = 0
    var name = String()
    var job:String?
    var dept:Department?
}

let emp = Employee()
//emp.no = 100
emp.name = "xx"

//class EmployeeLazy
//{
//    let no = 0
//    var name = String()
//    var job:String?
//    var dept:Department = Department()
//}
//
//let emp1 = EmployeeLazy()

//println(emp1.dept)
*/

protocol Person
{
    var attrubut : String { get set }
}

class Employee
{
    var no : Int = 0
    var firstname : String = "Tony"
    var lastname : String = "Guan"
    var job : String?
    var dept : Department?
    @lazy var lazyattribut = "123"
    
    var fullname : String
    {
        get{
            return "\(firstname).\(lastname)"
        }
        set(newFullName){
//            newFullName.
//            var name = newFullName.componentsSeparatedByString()
//            self.firstname = String(count:5,repeatedValue:"a")
//            var string = String(count: 5, repeatedValue: "a")
        }
    }
    
    //只读属性
    var onlyRead : String{
    get{
        return "this is onlyread Attribut"
    }
    }
    
    
    //属性观察者
    
    var attribut:String = "attribut" {
        willSet(newvalue){
            
        }
        didSet(oldValue){}
    }
    
//    var attrubut : String {
//    get{}
//    }
}
//var array = [1,4,2,6,9]
//let result = sort(&array){$0>$1}
//array
var emp:Employee = Employee()

var sss:String = "1,2"



