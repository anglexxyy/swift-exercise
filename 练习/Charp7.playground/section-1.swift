// Playground - noun: a place where people can play

import Cocoa
/*
//控制语句 if else
let testscore = 76
var grade:Character
if testscore >= 90
{
    grade="A"
}
else if testscore >= 80
{
    grade="B"
}
else if testscore >= 70
{
    grade="D"
}
else if testscore >= 60
{
    grade="E"
}
else
{
    grade="F"
}

println(grade)
*/
/*
//switch
let testscore = 90
var grade:Character

switch testscore/10
{
case 9:
    grade="A"
case 8:
    grade="B"
case 7:
    grade="C"
case 6:
    grade="E"
default:
    grade="F"
}
//switch 使用范围

switch testscore {
case 90...100:
    grade="优"
    fallthrough
case 80...90:
    grade="良"
case 70...60:
    grade="中"
default:
    grade="差"
}

var student = (id:"1001", name:"jack", age:32, ChScore:90, EnScore:91)
var desc:String
switch student {
case (_,_,let age,90...100,90...100) where age>32:
    desc="A"
case (_,_,let age,90...100,90...100):
    desc="B"
default:
    desc="F"
}
*/
//while
/*
var i:uint32 = 0

while i*i < 100000
{
    ++i
}

println(i)


i=0
//do while
do
{
    ++i
}
while i*i < 100000
println(i)
*/
/*
println("n\t n*n")
println("--------------")
for var i=1; i<10; i++
{
    println("\(i) X \(i) = \(i*i)")
}

let numbers = [1,2,3,4,5,6,7,8,9,10]
label1:for number in numbers {
    if number > 5
    {
        break //label1
    }
    if number == 9
    {
        break //label1
    }
    println("number is \(number)")
}

println("---------")

label2:for var x = 0; x < 5; x++
{
    label3:for var y = 5; y>0; y--
    {
        if y == 3
        {
            continue label2
        }
        println("(x,y) = (\(x),\(y))")
    }
}
println("Game Over")

label2:for var x = 0; x < 5; x++
{
    label3:for var y = 5; y>0; y--
    {
        if y == 3
        {
            continue label3
        }
        println("(x,y) = (\(x),\(y))")
    }
}
println("Game Over")
*/






