// Playground - noun: a place where people can play

import Cocoa
import 

/*
enum WeekDays1
{
    case Monday
    case Tuesday
    case Thursday
    case Friday
}
enum WeekDays2 : Int {case Monday,Tuesday,Thresday,Friday}

enum WeekDays4 : Int
{
    case Monday = 1
    case Tuesday = 2
    case Thursday = 3
    case Friday = 4
}
enum WeekDays3 : Int {case Monday=1,Tuesday=2,Thresday=3,Friday=4}

WeekDays3.fromRaw(3)
*/
/*
struct Departmnet{
    var no:Int = 0
    var name:String = ""
}

 class Employee
{
    var no:Int = 0
    var name:String = ""
    var job:String?
    var dept:Departmnet?
}

var dept = Departmnet()
dept.name = "IT"
dept.no = 101

var emp = Employee()
emp.dept = dept
emp.no = 1
emp.name = "Nile"
emp.job = String()



func updateDept(inout d:Departmnet){
    d.name = "xxx"
}
dept.name
updateDept(&dept)
dept.name
func updateEmp(emp:Employee){
    emp.name = "John"
}
emp.name
updateEmp(emp)
emp.name
*/
/*
func divide(n1:Int,n2:Int) -> Double?{
    if n2 == 0 {
        return nil
    }
    return Double(n1) / Double(n2)
}

let result1 :Double? = divide(100, 200)
//let result2 : Double = divide(100, 200)
let result2:Double? = divide(100, 0)

let result3:Double! = divide(100, 200)

var arg:Int?
arg = 9
*/
class Company
{
    var No:Int = 10000
    var Name : String?
}
class Department
{
    var No:Int = 10
    var Name:String = "SALES"
    var company:Company?
}
 class Employee
 {
    var no : Int?
    var Name : String?
    var Job : String?
    var Dept: Department?
}

var emp = Employee()
emp.no = 10000
//emp.Name = "jack"
emp.Name?.isEmpty
//emp.Dept!.company!.Name


var str = ""




