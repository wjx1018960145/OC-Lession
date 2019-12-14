//
//  main.m
//  LessonProtocol
//
//  Created by lanouhn on 14-10-18.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Teacher.h"
#import "Man.h"
#import "Women.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        //Manaual Reference Count MRC 人工引用技术
        //Auto Reference Count ARC 自动引用技术
        
//        Teacher *tea = [[Teacher alloc] init];
//        //去开车
//        [tea drive];
//        [tea clean];
        //背景
        NSLog(@"在一个月黑风高的夜晚 超群出生了!");
        
        Man *chaoqun = [[Man alloc]init];
        //设置姓名
        chaoqun.name = @"chaoqun";//姓名
        chaoqun.gender = @"M";//性别
        chaoqun.age = 10;//nianl
        NSLog(@"如此同时,从石头中蹦出一个倾城");
        Man *qingcheng = [[Man alloc]init];
        qingcheng.name = @"倾国";//姓名
        qingcheng.gender = @"M";//性别
        qingcheng.age = 8;//年龄
        NSLog(@"在一个风和日丽的夜晚,王力出生了");
        Women *wangli = [[Women alloc]init];
        wangli.name = @"wangli";
        wangli.gender = @"W";//性别
        wangli.age = 7;//年龄
        [wangli birth];//
        NSLog(@"z就这样一天一天,所与人慢慢长大,有了自己的工作!");
        //玩游戏
        [qingcheng playLoL];
        [chaoqun playLoL];
        //女人
        //打扫卫生
        
//        [wangli clean];
//        //做饭
//        [wangli cooking];
//        //编程
//        [wangli programming];
        NSLog(@"在一个风雨交加的夜晚,在大保健门口,王力和超群见了 而且一见钟情");
        wangli.delegate = chaoqun;
        
        //chaoqun
        //饿了
        [wangli hungry];
        //脏了
        [wangli floorDirty];
        //累了
        [wangli tired];
        //无聊了
        [wangli boring];
        
        //将wang的丈夫设置为chengqing
        wangli.delegate = qingcheng;
        //饿了
        [wangli hungry];
        //脏了
        [wangli floorDirty];
        //累了
        [wangli tired];
        //无聊了
        [wangli boring];
    }
    return 0;
}

