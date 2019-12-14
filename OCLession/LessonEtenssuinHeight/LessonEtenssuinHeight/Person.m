//
//  Person.m
//  LessonEtenssuinHeight
//
//  Created by lanouhn on 14-10-22.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "Person.h"

//定义该类的私有方法 以及私有的实例变量
@interface Person ()
{
    
    NSString *_name;
    NSString *_gender;
    NSInteger _age;
}
- (void)goodMorning;
- (void)goodAfternoon;
- (void)goodevening;
+ (void)test;
@end






//未在.h文件中声明的方法叫做私有的方法.但是oc中的没有绝对的私有
//该方法不想让外部调用,只想本类调用
@implementation Person
- (void)goodMorning{
NSLog(@"good morning");
}
- (void)goodAfternoon{
NSLog(@"afernoon");
}
- (void)goodevening{
NSLog(@"evening");
}
- (void)dealloc{
    
    [_name release];
    [_gender release];
    [super dealloc];
}

- (void)sayHi{
    //在本类中调用本类方法
    [self goodMorning];
    [self goodAfternoon];
    [self goodevening];
    //获取当前对象的类
    [[self class]test];
   
}
+ (void)test{
    NSLog(@"wang test");
}
@end
