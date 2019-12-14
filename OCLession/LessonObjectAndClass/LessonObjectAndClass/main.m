//
//  main.m
//  LessonObjectAndClass
//
//  Created by lanouhn on 14-10-6.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Lottery.h"
#import "Person.h"
//面向过程:以事件为中心,考虑完成事件的的详细步骤.
//面向对象:以事物为中心,考虑每个事物应该具备的功能,而完成该事件,只是事物所有功能中的一个小功能.
//OO :Object Oriented 面向对象
//oop : Object Oriented Programming 面向对象编程
//类 class :具有相同的特征以及相同的行为事物抽象,不具体
//描述一个类 :特征以及行为.
//对象: 类的实例,类的具体体现,生活中的万物都是对象.
int main(int argc, const char * argv[])
{
///
    @autoreleasepool {
        
        // insert code here...
        //@ 是oc的标准
        //NSlog OC中的输出函数,自动集成换行功能.
        //创建对象两部;
        /**
         *1 在堆区开辟空间 oC中方法调用机制,消息发送机制[recevier message]
         //id 类似于void * 返回堆空间首地址,可以表示OC中所有对象类型.
         */
        //真实的对象是堆区开辟的空间,只不过指针变量per存储这堆区开辟空间的首地主,所以把person间接地成为对象
//        Person *person= [Person alloc];
//        //2初始化
//         person=[person init];
        Person *person=[[Person alloc] init];
        NSLog(@"%@",person);//%@对象输出格式.
        [person eat:1];
      
        
        NSInteger max = [person max:3 y:4];
        
        person->name=@"wang";
        person->gender=@"m";
        person->age=34;
        person->weight=79;
        [person sayHi];
        //对象访问实例变量,类似结构体指针变量访问结构体成员.
       
    }
    NSCalendarDate *now = [[NSCalendarDate alloc] init];
    
    NSMutableArray *arry = [[NSMutableArray alloc]init];
    //int i=0;
    for (int i=0; i<10; i++) {
        NSCalendarDate *iweekFromNow;
        iweekFromNow=[now dateByAddingYears:0
                      months:0
                      days:(i * 7)
                    hours:0
                    minutes:0
                    seconds:0
                      ];
        Lottery *newntry=[[Lottery alloc] init];
        [newntry perparRandomnumber];
        [newntry setEntryDeta:iweekFromNow];
        [arry addObject:newntry];
    }
    for (Lottery *entryToPrint in arry) {
        NSLog(@"%@",entryToPrint);
    }
    
  
    return 0;
}

