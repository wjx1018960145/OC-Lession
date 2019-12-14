//
//  FamilyClass.m
//  LessonClassCombin
//
//  Created by lanouhn on 14-10-7.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "FamilyClass.h"
#import "ManClass.h"
#import "WomanClass.h"
#import "ChildClass.h"
@implementation FamilyClass
- (void)setHost:(ManClass *)host
{
    _host = host;
}
- (ManClass *)host
{
    return _host;
}
- (void)setHostess:(WomanClass *)hosttess
{
    _hostess = hosttess;
}
- (WomanClass *)hosttess
{
    return _hostess;
}
- (void)setYoung:(ChildClass *)young
{
    _young = young;
}
- (ChildClass *)young
{
    return _young;
}
- (void)sayHi
{
    NSLog(@"this host name is %@ this hosttess name is %@ this young name is %@", [_host name],[_hostess name], [_young name]);
}
@end
