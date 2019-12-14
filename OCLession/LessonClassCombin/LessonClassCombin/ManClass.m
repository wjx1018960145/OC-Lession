//
//  ManClass.m
//  LessonClassCombin
//
//  Created by lanouhn on 14-10-7.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "ManClass.h"
#import "WomanClass.h"
#import "ChildClass.h"

@implementation ManClass
- (void)setName:(NSString *)name
{
    _name = name;
}
- (NSString *)name
{
    return _name;
}
- (void)setWife:(WomanClass *)wife
{
    _wife = wife;
}
- (WomanClass *)wife
{
    return _wife;
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
    NSLog(@"my name is %@ my wife name %@ my child name %@ ", _name, [_wife name], [_child name]);
}
@end
