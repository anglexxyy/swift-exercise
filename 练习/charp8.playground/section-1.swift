// Playground - noun: a place where people can play

import Cocoa

/*
var studentList1:Array<String> = ["张三","李四","王五","董六"]
var studentList2:[String] = ["张三","李四","王五","董六"]
var studentList3 = [String]()

studentList1.append("朱七")
println(studentList1)

studentList2 += ["张飞"]
println(studentList2)

studentList1.insert("张飞", atIndex: studentList1.count
)
println(studentList1)

studentList1.removeLast()
println(studentList1)

studentList1[4] = "jack"
println(studentList1)

for item in studentList1
{
    println(item)
}

for (index,value) in enumerate(studentList1)
{
    println("item\(index+1):\(value)")
}


var studentDic1:Dictionary<Int32,String> = [101:"张三",102:"李四",103:"王五"]
var studentDic2 = [101:"张三",102:"李四",103:"王五"]
var studentDic3 = Dictionary<Int32,String>()
studentDic1.count
studentDic1[104] = "jack"
studentDic1
studentDic1.count
studentDic1[104] = nil
studentDic1.count
studentDic1[104] = "jack"
studentDic1
studentDic1.removeValueForKey(101)
studentDic1

//字典的遍历
for key in studentDic1.keys
{
    println(key)
}

for value in studentDic1.values
{
    println(value)
}

for (key,value) in studentDic1
{
    println("key:\(key)\t value:\(value)")
}

var copystudent = studentDic1
copystudent == studentDic1

copystudent[104] = "jack"
studentDic1 == copystudent
studentDic1[104]
studentDic1.removeValueForKey(104)
copystudent
studentDic1

*/

class Employee
{
    var name : String
//    var id : UInt
    init(name:String)
    {
        self.name = name
//        self.id = id
    }
}

var emps = Dictionary<UInt,Employee>()
let emp1 = Employee(name:"张三")
let emp2 = Employee(name:"李四")

emps[101] = emp1
emps[102] = emp2

var copyemps = emps
let copyEmp:Employee! = copyemps[101]
copyemps[101]!.name = "jack"
copyemps
emps

















