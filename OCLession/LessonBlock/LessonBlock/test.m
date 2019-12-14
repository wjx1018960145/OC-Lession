//
//  test.m
//  LessonBlock
//
//  Created by lanouhn on 14-10-15.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "test.h"

@implementation test
- (void)setName:(NSString *)name
{
    _name = name;
}
- (NSString *)name
{
    return _name;
}
- (void)setAge:(NSInteger)age
{
    _age = age;
}
- (NSInteger)age
{
    return _age;
}
- (void)setNumber:(NSString *)number
{
    _number = number;
}
- (NSString *)number
{
    return _number;
}
- (id)initWithName:(NSString *)name age:(NSInteger)age number:(NSString *)number{
    if (self) {
        _name = name;
        _age = age;
        _number = number;
    }
    return self;
}
+ (id)initWithName:(NSString *)name age:(NSInteger)age number:(NSString *)number
{
    test *tes = [[test alloc] initWithName:name age:age number:number];
    return tes;
}
- (NSString *)description
{
    return [NSString stringWithFormat:@"name:%@  age:%ld  number:%@", _name,_age,_number];
}

@end
