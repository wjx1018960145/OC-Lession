//
//  main.m
//  LessonMemaryPrimary
//
//  Created by lanouhn on 14-10-20.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{

   // @autoreleasepool {
        
        //内存管理的黄金法则: 如果你对一个对象进行了alloc(0-1) retain(+1) copy(mutableCopy)操作之后,你就拥有了该对象的所有权,你就有责任对它进行release或autorelease.
        //alloc:开辟空间 0--1
    //dealloc (回收空间)----- alloc(开辟空间)
        //rerain:
        //copy:复制出一个新的对象,原有的对象引用计数不发生变化,新的对象的引用计数由 0--1
        //release:将引用对象计数减1 而且立即减一
//        //autorelease:将对象的引用计数减一,只不过延迟减一(未来的某一时刻).
//        Person *per = [[Person alloc]init];//0--1
//        //alloc 开辟空间 从无到有,0-1.
//        //打印per的引用计数
//        //内存问题
//        //1野指针 (访问不该访问的内存)
//        //2过渡释放 (释放多次)
//        //3内存泄露 (没有释放)
//        NSLog(@"%lu",[per retainCount]);
//        [per release];//1--0
//         NSLog(@"老王");
//        Person *per1 = [[Person alloc]init];//0--1
//        NSLog(@"%lu",[per1 retainCount]);
//        Person *chaoqun1 =  [per1 retain];//1--2
//         NSLog(@"%lu",[per1 retainCount]);
//         [chaoqun1 retain];//2--3
//        NSLog(@"%lu",[chaoqun1 retainCount]);
//        [chaoqun1 retain];//3--4
//        NSLog(@"%lu",[chaoqun1 retainCount]);
//        //释放所有权relase
//        [chaoqun1 release];//4--3 立即减一
//        NSLog(@"%lu",[chaoqun1 retainCount]);
//        [chaoqun1 release];//3--2
//        [chaoqun1 release];//2--1
//        [chaoqun1 release];//1--0
//        //当对象的引用计数为零时,系统会自动调用该对象的delloc,用来回收空间.
//        //1.野指针的问题
//        //访问没有所有权的空间.
//        ///NSLog(@"%lu",[chaoqun1 retainCount]);
//       //存在问题1 内存泄露 2 释放不该释放的内存
//        //只有满足一下两个条件才具备引用计数机制
//        //1必须是OC语言
//        //2指向必须在堆区
//        NSString *str = [[NSString alloc]initWithFormat:@"sdf"];
//        [str retain];
//        [str retain];
//        [str retain];
//        str = @"qwe"; //指针重指向
//        [str release];
//        [str release];
//        [str release];
//        [str release];

        //dutorelease
    //自动释放池 用来存放声明为autorelease的对象
    //当自动释放池销毁时,会往池中的每一个对象都发送一个release消息
//    @autoreleasepool {
//        
//    
//      //  NSAutoreleasePool *pool =[[NSAutoreleasePool alloc]init];
//        Person *per = [[Person alloc]init];//0--1
//    //autorelease 将声明为autorelease的对象放到离他最近的自动释放池中
//        [per autorelease];//1--0
//       // [per release];//0--1//内存过度释放
//       // [pool release];//引用计数为0,调用该类的dealloc方法
//    }
//    NSLog(@"test");
    //}

    
//    @autoreleasepool {
//        //自动释放池以栈的方法来管理池中的对象,当自动释放池销毁时,最后放入的对象会先被销毁.
//        Person *per = [[Person alloc]init];
//        s
//        @autoreleasepool {
//            
//        }
//        [per autorelease];
//        NSLog(@"内部自动释放");
//    }
//    NSLog(@"外部自动释放");
    //自动释放池面试题
    //在里面嵌套一个autorele
//    @autoreleasepool {
//        //内存不足
//        for (long i = 0; i < 1000000000; i++) {
//            @autoreleasepool {
//                Person *per = [[Person alloc]init];
//                [per autorelease];
//
//            }
//            
//        }
//        
//        
//    }
    
//    @autoreleasepool {
//        Person *per = [[Person alloc]init];//1
//        per.name = @"Frank";
//        per.gender = @"nan";
//        per.age = 19;
//        Person *per1 = [per copy];
//        NSLog(@"%lu %lu  %@ %@",[per retainCount],[per1 retainCount], per,per1);
//    }
//    

    //容器的内存管理(Collection集合)的内存管理
    
    @autoreleasepool {
        Person *per1 = [[Person alloc]init];//0-1
        [per1 retain];
        Person *per2 = [[Person alloc]init];//0-1
        //当往集合中添加元素时,集合会对元素做一次retain操作,引用计数加1;
        //当从集合中移除元素时,集合会对元素发送一个release ,引用计数减一
        //当集合将要销毁时,集合会对每一个对象,发送release,引用计数减一
        NSMutableArray *marry = [[NSMutableArray alloc]initWithObjects:per1,per1,per1, nil];//0-1
        [marry addObject:per2];
       // [marry removeAllObjects];
        [marry release];
        NSLog(@"%lu",[per1 retainCount]);
         NSLog(@"%lu",[per2 retainCount]);
        
    }
    
    
    
    return 0;
}

