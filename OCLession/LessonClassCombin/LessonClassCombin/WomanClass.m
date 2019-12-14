//
//  WomanClass.m
//  LessonClassCombin
//
//  Created by lanouhn on 14-10-7.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "WomanClass.h"
#import "ManClass.h"
#import "ChildClass.h"
@implementation WomanClass
- (void)setName:(NSString *)name
{
    _name = name;
}
- (NSString *)name
{
    return _name;
}
- (void)setHusband:(ManClass *)husband
{
    _husband = husband;
}
- (ManClass *)husband
{
    return _husband;
}
- (void)setChild:(ChildClass *)child
{
    _child = child;
}
- (ChildClass *)child
{
    return _child;
}
- (void)sayHi
{
    NSLog(@"my name is %@ my husband name is%@ my child name is %@ ", _name, [_husband name],[_child name]);
}
@end
