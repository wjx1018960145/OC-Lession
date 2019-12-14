//
//  Man.m
//  LessonProtocol
//
//  Created by lanouhn on 14-10-18.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "Man.h"


@implementation Man
//@synthesize _name,_age,_gender,_weif;
- (void)playLoL
{
    NSLog(@"小撸怡情,大撸伤身,樯橹灰飞烟灭");
}
- (void)sweep
{
    NSLog(@"房间整洁,让媳妇高兴");
}//打扫卫生
- (void)makeFood
{
    NSLog(@"做土豆丝");
}//做饭
- (void)writhCode
{
    NSLog(@"给媳妇做APP");
}//编程
//选择实现
- (void)bronBaby
{
    NSLog(@"%@给媳妇生个玩具",self.name);
}//生孩(选择)
@end
