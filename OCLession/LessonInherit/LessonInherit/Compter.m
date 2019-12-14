//
//  Compter.m
//  LessonInherit
//
//  Created by lanouhn on 14-10-8.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "Compter.h"

@implementation Compter
+ (id)compter
{
//创建一个compter对象
    Compter *compter=[[Compter alloc] init];
    
    return compter;
}
- (id)initWithKind:(NSString *)kind brand:(NSString *)brand size:(CGFloat)size
{
    if (self) {
        _kind = kind;
        _brand = brand;
        _size = size;
    }
  
    return self;
}
+ (id)compterWithKind:(NSString *)kind brand:(NSString *)brand size:(CGFloat)size
{
    Compter *com=[[Compter alloc] initWithKind:kind brand:brand size:size];
    return com;
}
@end
