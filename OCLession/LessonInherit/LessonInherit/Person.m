//
//  Person.m
//  LessonInherit
//
//  Created by lanouhn on 14-10-8.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id)initWithName:(NSString *)name gender:(NSString *)gender age:(NSInteger)age weight:(NSInteger)weight height:(NSInteger)height bloodType:(NSString *)bloodType
{
    //
    self = [super init];
    if (self) {
        _name = name;
        _gender = gender;
        _age = age;
        _weight = weight;
        _height = height;
        _bloodType = bloodType;
    }
   
    return self;
}
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
- (void)setWeight:(NSInteger)weight
{
    _weight = weight;
}
- (NSInteger)weight
{
    return _weight;
}
- (void)setHeight:(NSInteger)height
{
    _height = height;
}
- (NSInteger)height
{
    return _height;
}
- (void)setBloodType:(NSString *)bloodType
{
    _bloodType = bloodType;
}
- (NSString *)bloodType
{
    return _bloodType;
}
- (void)sayHi
{
    NSLog(@"person 在呐喊");
}
@end
