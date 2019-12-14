//
//  ChildClass.m
//  LessonClassCombin
//
//  Created by lanouhn on 14-10-7.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "ChildClass.h"
#import "ManClass.h"//.h文件中@class声明,.m文件中导入
#import "WomanClass.h"
@implementation ChildClass
- (void)steName:(NSString *)name
{
    _name = name;
}
- (NSString *)name
{
    return _name;
}
- (void)setFather:(ManClass *)father
{
    _father = father;
}
- (ManClass *)father
{
    return _father;
}
- (void)setMother:(WomanClass *)mother
{
    _mother = mother;
}
- (WomanClass *)mother
{
    return _mother;
}
- (void)sayHi
{
    NSLog(@"my name is %@ my father name is %@ my mother name is %@", _name, [_father name],[_mother name]);
}
@end
