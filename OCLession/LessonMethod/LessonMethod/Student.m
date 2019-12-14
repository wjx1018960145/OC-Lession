//
//  Student.m
//  LessonMethod
//
//  Created by lanouhn on 14-10-7.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "Student.h"

@implementation Student
- (void)setName:(NSString *)name
{
    _name = name;
}
- (NSString *)name
{
    return _name;
}

- (void)setGender:(NSString *)gender
{
    _gender = gender;
}
- (NSString *)gender
{
    return _gender;
}

- (void)setAge:(NSInteger)age
{
    _age = age;
}
- (NSInteger)age
{
    return _age;
}

- (void)sayHi
{
    NSLog(@"name=%@ gender%@ age%ld",_name,_gender,_age);
}

- (void)setName:(NSString *)name gender:(NSString *)gender age:(NSInteger)age
{
    _name = name;
    _gender = gender;
    _age = age;
}

//初始化方法,为实例变量赋初值.
//customized init method
- (id)initWithName:(NSString *)name gender:(NSString *)gerder age:(NSInteger)age
{
    _name = name;
    _gender = gerder;
    _age = age;
    //找到当前调用该方法的对象.---self
    return self;
}
@end
