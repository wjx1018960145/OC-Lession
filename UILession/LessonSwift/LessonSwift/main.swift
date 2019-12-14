//
//  main.swift
//  LessonSwift
//
//  Created by lanou3g on 15-1-6.
//  Copyright (c) 2015年 王军鑫. All rights reserved.
//

import Foundation

//在函数定义中 参数列表中的参数默认是常量,如果想使用变量参数,在参数名前用var声明一下


func changeNumber(inout num1:Int, inout num2:Int) {
    var temp = num1
    num1 = num2
    num2 = temp
    println("num1 =  \(num1), num2 = \(num2)")
}

var number1 = 10,number2 = 20
//用inout 来修饰参数,参数就是一个输入输出参数; 调用函数时通过传引用的方式进行传参
changeNumber(&number1, &number2)
println("num1 =  \(number1), num2 = \(number2)")
//嵌套函数,定义在其他函数体内,作用域最外层的大括号,如果在函数外调用就会出错
func change(change:Bool) -> Int->Int {
    func chang1(num: Int)->Int {
        return num + 1
    }
    
    func change2(num: Int)->Int {
        return num - 1
    }
    return change ? chang1 :change2
}

var ch = change(true)
println(ch(30))

var names = ["zhangsan","lishi","wangwu","zhaoliu"]
//用自定义的排序函数进行排序
func sortedName(s1: String, s2: String) ->Bool {
    return s1>s2
}

var sotrName = sorted(names, sortedName)
//闭包 和c,OC 中block一样也是一段封闭的代码块;就是一个匿名函数
/*
闭包的格式
{ 
    (参数列表)-返回值类型
    in
    功能代码

}
*/
var sotrName1 = sorted(names, {
    (s1: String, s2: String) -> Bool
    in
    return s1 < s2
})
//去掉了参数的类型声明; 可以根据传入的值的类型进行推断
var sotrName2 = sorted(names, {
    (s1, s2) -> Bool
    in
    return s1 < s2
})
//隐式返回值;字符串指定重新定义了(>/<) 的功能,传入两个字符串比较两大小,并返回Bool值
var sotrName3 = sorted(names, {
    (s1, s2)
    in
    return s1 > s2
})
//参数名称的缩写,在Swift自动为内敛函数提供缩写的功能,通过$0,$1, #2... 来顺序调用参数
var sotrName4 = sorted(names, {
   
    return $0 > $1
})

//闭包的最贱形式;>本身就是一个内敛函数
var sotrName5 = sorted(names, >)

//尾随闭包;支持将闭包写在函数外,并且当做最后一个参数使用
var sotrName6 = sorted(names){
 return $0 > $1
}

println(sotrName5)


//枚举类型 在Swift中枚举的成员在被创建的时候是不会赋给一个默认值,不同于c和OC
enum week : Int {
    case mo = 1
    case tu = 2
    case we
    case th
    case fi
    case sa
    case su
}
//取得枚举值的方法
println(week.we.rawValue)

//类和结构体 在Swift中用struct声明一个结构体,用class声明一个类,
//在swift中的结构体里面可以定义方法;这是与OC的结构体最大的区别之一
struct Length {
    var start = 0.0
    var end = 0.0
    func getLength()->Double{
        return end - start
    }
}
var length = Length()
length.start = 10.0
length.end = 1000.0
println(length.getLength())

//结构体是值类型
var length1 = length
length1.start = 20

class Person {
    var name = "zhnagsan"
}
var person = Person()
println(person.name)
//类是引用类型
var person1 = person
person1.name = "lishi"
println(person.name)
//属性
//1.存储属性, 存储常量或者变量作为实例的一部分来使用
//2.计算属性,
//计算属性不直接存储值,而是提供了一个getter来获取值,提供一个可选的setter来设置值
struct Point {
    var x = 0.0
    var y = 0.0
    
}
struct Size {
    var width = 0.0
    var height = 0.0
    
}

struct Rect {
    var point = Point()
    var size = Size()
    var cender : Point{
        get{
           let centerx = size.width/2 + point.x
            let centery = size.height/2 + point.y
            return Point(x: centerx, y: centery)
        }
        set(newCenter) {
            point.x = newCenter.x - size.width / 2
            point.y = newCenter.y - size.height / 2
            
        }
    }
}

//结构体的成员逐一构造器方法;类没有这种方法
var p = Point(x: 10, y: 10)
var s = Size(width: 100, height: 100)
var r = Rect()
r.point = p
r.size = s
println("cx = \(r.cender.x)")

r.cender = Point(x: 100, y: 100)

println("px = \(r.point.x),py = \(r.point.y)")

//类型属性 用结构体或者类的名字来直接调用
//在结构体中用static声明类型属性
struct aStruct {
    static var s  = "lishi"
    
}
var astr = aStruct()
var a = aStruct.s
//在类中 用class关键字声明类型属性
class aClass {
    class var name: String {
        return "wangwu"
    }
    
}

println(aClass.name)

//方法 定义在结构体和类里面的函数叫做方法
//实例方法 通过结构体或者类的实例来调用
//类型方法 结构体或者类的名字调用

//在结构体中用static关键字声明类型方法
//在类中用class关键字声明的方法是类的类型方法

//如果想在方法中修改属性的值,用mutating 对方法声明;这种方法只是用在值类型的数据,在类中属性可以直接修改
struct bStruct {
    var bs = "2"
    
    mutating func print(s1: String, s2: String)->String {
        
        self.bs = "zhangsan"
        
        return "ni hao"
    }
}
var bs = bStruct()
//在方法中参数列表中的第一个参数默认只能是内部参数;其他的参数即使内部参数又是外部参数,
//在Swift中没有定义像id这样的泛型 但是提供定义泛型的方法
class bClass {
    
    func changeNumber<T>(inout num: T, inout num2: T) {
        var temp = num
        num = num2
        num2 = temp
    }
    //构造器方法 构造器方法没有返回值
    init(c1: String, c2:String) {
       
    }
    
}

var bclass = bClass(c1: "", c2: "")
var ss = 12
var ms = 34
//bclass.changeNumber(&ss, num2 : &ms)
println("ss = \(ss), mm = \(ms)")

//继承 在Swift只有类才有继承 结构体和枚举是没有继承的
//方法重写 重写父类的方法 用override关键字声明方法 final关键字声明的方法子类不能重写
class cClass : bClass {
    
    override func changeNumber<T>(inout num: T, inout num2: T) {
             println("num1 = \(num), nnum2 = \(num2)")
    }
    var c1 = "c1"
    var c2 = "c2"
    override init(c1: String, c2:String) {
        //用父类调用init方法
        super.init(c1: "", c2: "")
        self.c1 = c1
        self.c2 = c2
           }
    // 析构器 当类的对象的引用计数为0时调用
    
    deinit {
        println("我被释放了")
    }

}
var cclass = cClass(c1: "12", c2: "23")
cclass.changeNumber(&ss, num2: &ms)
println("ss = \(cclass.c1), mm = \(cclass.c2)")

var ccclass1 :cClass?
ccclass1 = cClass(c1: "", c2: "")
ccclass1 = nil


