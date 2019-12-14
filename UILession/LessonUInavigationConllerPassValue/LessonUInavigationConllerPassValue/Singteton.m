//
//  Singteton.m
//  LessonUInavigationConllerPassValue
//
//  Created by lanouhn on 14/11/5.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "Singteton.h"

@implementation Singteton
/**
 *  为了保证该类只有一个对象,我们用静态的变量来存储对象地址,一旦指针变量为空,则创建对象,否则直接将原来的地址返回.
 但是alloc的空间无法确定安全释放时机,所以allo 不release,会照成内存泄露,单例是用来解决特定的问题,万不得尽量不要使用单例
 */
static Singteton *sTon = nil;
+ (Singteton *)sharedSingteton{
    if (!sTon) {
       sTon =  [[Singteton alloc]init];
    }
    return sTon;
}
- (void)dealloc{
    [_firsttext release];
    [_secondtext release];
    [super dealloc];
}
@end
