//
//  Teacher.m
//  LessonProtocol
//
//  Created by lanouhn on 14-10-18.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "Teacher.h"
/**
 *  服从完协议之后,必须要实现协议中的方法
 */
@implementation Teacher 
//打扫闻声
- (void)clean
{
    NSLog(@"一屋不扫可以扫天下");
}
//发快递
- (void)sendExpressage
{
    NSLog(@"有本事发逆风");
}
//买票
- (void)buyTickey
{
    NSLog(@"买一张火箭票");
}
//开车
- (void)drive
{
    NSLog(@"你妹啊 一个自行车");
}//洗脚
- (void)washFeet
{
    NSLog(@"哎哟,我去");
}
@end
