//
//  Women.m
//  LessonProtocol
//
//  Created by lanouhn on 14-10-18.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "Women.h"
#import "Man.h"
@implementation Women
- (void)birth
{
    NSLog(@"哎呀终于出来了");
}
//地脏了
- (void)floorDirty
{
//让老公打扫卫生
    [self.delegate sweep];
}
//饿了
- (void)hungry
{
    [self.delegate makeFood];
    
}
//累了
- (void)tired
{
    //老公敲代码
    [self.delegate writhCode];
}
//无聊了
- (void)boring
{
//让老公生孩子
    //判断老老公是否实现了生孩子
    //判断某一个对象是否实现了指定的方法
    if ([self.delegate respondsToSelector:@selector(bronBaby)]) {
        [self.delegate bronBaby];
    }else{
        NSLog(@"我去,还得自生");
    }
    
}
//- (void)clean
//{
//    NSLog(@"一屋不扫何以扫天下");
//}
//- (void)cooking
//{
//    NSLog(@"鱼香肉丝");
//}
//- (void)programming
//{
//    NSLog(@"enjoy coding enjoy life");
//}
//- (void)giveBirth
//{
//    NSLog(@"造物主");
//}

@end
