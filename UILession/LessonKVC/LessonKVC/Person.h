//
//  Person.h
//  LessonKVC
//
//  Created by lanouhn on 14/11/10.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 *  KVC 键值编码是一种间接的访问实例变量的方法
    [对象 setValue @"" forkey:@"name"];
    工作原理:
    1.现在查找该类有没有对应的setName  setter方法如果有,调用setter方法给实例变量赋值,如果没有转到第二部
    2.在查找带下划线的实例变量_name,如果有这给下划线_name赋值,如果没有转到第三步;
    3.最后查找和key值相同的实例变量,如果没有转到第四步.
    4.调用该类的setValue:forkey:方法.如果该方法没有实现,程序crash.
   [per valueForKey:@"_name"];
 1.1.现在查找该类有没有对应的getName  getter方法如果有,调用getter方法给实例变量赋值,如果没有转到第二部
 2.在查找带下划线的实例变量_name,如果有这给下划线_name赋值,如果没有转到第三步;
 3.最后查找和key值相同的实例变量,如果没有转到第四步.
 
 */
@interface Person : NSObject
//{
//    NSString *__name;
//    NSString *_name;
//    NSString *name;
//}


@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *gender;
@property (nonatomic, copy) NSString *age;
@property (nonatomic, copy) NSString *address;
@property (nonatomic, copy) NSString *type;
@property (nonatomic, copy) NSString *phone;//联系方法

@end
