// Playground - noun: a place where people can play

import Cocoa

//charp 6 字符和字符串
var 哭 = "😢"
var kue = "\U0001f603"
let xiao:Character = "😊"
let lamda1:Character="λ"
let lamda2:String="\u03bb"
var t = String(lamda1)
lamda2==t
lamda1 == Character(lamda2)
let 🌍 = "🐻🐱🐼🐒🐷🐎🐂🐓🐔🐭🐊🐑🐦"
//println(countElements(🌍))
let 熊 = "🐻"
let 猫 = "🐱"
let 🐼 = 熊 + 猫
let 熊猫 = "🐼"
熊猫 == 🐼
🐼 < 熊猫
let emptyStr1=""
let emptyStr2=String()
emptyStr1 == emptyStr2
熊 > 猫

for codeUnit in 猫.unicodeScalars
{
    println(codeUnit.value)
}

for codeUnit in 熊.unicodeScalars
{
    println(codeUnit.value)
}
var sumUnicode:UInt32=0;
for codeUnit in 🐼.unicodeScalars
{
    
    sumUnicode += codeUnit.value
    
    println(sumUnicode)
}
var t1="\U0003e86c"
var a:Int32 = 0x12



