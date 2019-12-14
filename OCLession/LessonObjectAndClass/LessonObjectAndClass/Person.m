//
//  Person.m
//  LessonObjectAndClass
//
//  Created by lanouhn on 14-10-6.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "Person.h"
/**
 *  类的实现部分以@implementation开头+ 类名 以@end结束.
 */
@implementation Person
-(void)sayHi
{
    //输出实例变量值,
    NSLog(@"%@:name, gender=%@ ,age=%ld",name,gender,age);
   
}

- (void)eat:(NSInteger)money
{
    NSLog(@"吃=%ld钱",money);
}
- (NSInteger)max:(NSInteger)x y:(NSInteger)y
{
    
    return x > y ? x : y;
}
@end
//实现student类

@implementation student

@end

