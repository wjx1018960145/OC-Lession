//
//  Teacher.m
//  LessonInherit
//
//  Created by lanouhn on 14-10-8.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "Teacher.h"

@implementation Teacher

- (id)initWithName:(NSString *)name gender:(NSString *)gender age:(NSInteger)age weight:(NSInteger)weight height:(NSInteger)height bloodType:(NSString *)bloodType couserName:(NSString *)couserName teaNumber:(NSString *)teaNumber
{
//    _name = name;
//    _gender = gender;
//    _age = age;
//    _weight = weight;
//    _height = height;
//    _bloodType = bloodType;

    self = [super initWithName:name gender:gender age:age weight:weight height:height bloodType:bloodType];
    if (self) {
        
        _couserName = couserName;
        _teaNumber = teaNumber;
    }
    return self;
}

- (void)setCouserName:(NSString *)couserName
{
    _couserName = couserName;
}
- (NSString *)couserName
{
    return _couserName;
}
- (void)setTeaNumber:(NSString *)teaNumber
{
    _teaNumber = teaNumber;
}
- (NSString *)teaNumber
{
    return _teaNumber;
}
//重新实现 重写 从 父类继承过来的方法
- (void)sayHi
{
    //执行父类对该方法的实现
    [super sayHi];//super 是一个编译器指令 并非对象,用来执行父类对某一个方法的实现,[不是调用父类的方法]
    NSLog(@"tea 在呐喊");
}
@end
