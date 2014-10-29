// Playground - noun: a place where people can play

import Cocoa

var ss="111"

var sum:Int32=100
var a = 0;
var b=0;
var c=0
var t = a*a*a + b*b*b + c*c*c

while a*a*a + b*b*b + c*c*c == sum
{
    if sum > 999
    {
        break
    }
    sum++;
    a=sum/100
    b = (sum - a*100)/10
    c = (sum - a*100)%10
}
println(sum)





