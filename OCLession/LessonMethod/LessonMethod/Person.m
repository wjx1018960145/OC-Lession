//
//  Person.m
//  LessonMethod
//
//  Created by lanouhn on 14-10-7.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "Person.h"

@implementation Person



- (void)setName:(NSString *)name
{
    //当拿到外界传入的参数后,给自己的实例变量赋值
     _name = name;
}
- (void)setAge:(NSInteger)age
{
    
    _age = age;
}
- (void)setHeight:(NSInteger)height
{
    _height = height;
}
- (void)setGender:(NSString *)gender
{
    _gender = gender;
}
- (void)setWeight:(NSInteger)weight
{
    _weight = weight;
}
- (void)setNation:(NSString *)nation
{
    _nation = nation;
}
- (void)setBloodType:(NSString *)bloodType
{
    _bloodType = bloodType;
}
- (void)setIsMarried:(BOOL)isMarried
{
    _isMarried = isMarried;
}

//get name
- (NSString *)name
{
    return _name;
}
//get gender
- (NSInteger)age
{
    return _age;
}
//get height
- (NSInteger)height
{
    return _height;
}
//get gender
- (NSString *)gender
{
    return _gender;
}
//get weight
- (NSInteger)weight
{
    return _weight;
}
//get nation
- (NSString *)nation
{
    return _nation;
}
//get blootype
- (NSString *)blooType
{
    return _bloodType;
}
//get isma=rried
- (BOOL)isMarried
{
    return _isMarried;
}


- (void)eat
{

}
- (void)study
{
    NSLog(@"good good syudy");
}
- (void)work
{
    NSLog(@"上班 喝点茶 看看报");
}
- (void)communication
{
    NSLog(@"谈天说地");
}

- (void)sayHi
{   //在本类中可以直接访问实例变量
    NSLog(@"hi boy my name is %@ gender=%@",_name,_gender);
}

+ (void)test
{

}

+ (NSInteger)test3:(NSInteger)a b:(NSInteger)b c:(NSInteger)c d:(NSInteger)d e:(NSInteger)e
{
    //加号方法中不可以访问实例变量,因为实例变量存在依托于对象

    return a+b+c+d+e;
}

@end
