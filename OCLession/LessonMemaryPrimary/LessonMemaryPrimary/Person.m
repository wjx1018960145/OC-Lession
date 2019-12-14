//
//  Person.m
//  LessonMemaryPrimary
//
//  Created by lanouhn on 14-10-20.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "Person.h"

@implementation Person
//一旦对象的引用计数为零时,自动调用该方法,用来回收空间,一旦被调用,空间肯定回收了.
- (void)dealloc
{
    //当不知道父类对该方如何实现时,记得必须使用父类对该方法的实现
    NSLog(@"空间回收了");
    
    [super dealloc];
    
}
//如果要对一个对象进行copy操作,需要让该类服从nscopying 协议,实现copyWithZone方法
- (id)copyWithZone:(NSZone *)zone
{
    //1 开辟一块新的空间
    Person *newPerson = [[Person allocWithZone:zone]init];
    //2 将原有的内容拷贝到新的空间上
    newPerson.name = self.name;
    newPerson.gender = self.gender;
    newPerson.age = self.age;
    return newPerson;
}
@end
