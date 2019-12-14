//
//  NSString+SayHi.m
//  LessonExtension
//
//  Created by lanouhn on 14-10-17.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "NSString+SayHi.h"

@implementation NSString (SayHi)
- (void)sayHi
{
    NSLog(@"hellow 我是牛逼的字符串!");
}
- (NSString *)fistCharactor
{
    return [[self substringToIndex:1] uppercaseString];
}
@end
