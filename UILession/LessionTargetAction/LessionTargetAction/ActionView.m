//
//  ActionView.m
//  LessionTargetAction
//
//  Created by lanouhn on 14/10/30.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "ActionView.h"
#import "UIColor+Random.h"
@implementation ActionView
//6,通知代理执行协议中的方法
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    //self.backgroundColor = [UIColor random];
   // self.superview.backgroundColor = [UIColor random];
   // self.center = CGPointMake(arc4random()%250 + 50, arc4random()%50 + 50);
   // self.bounds = CGRectMake(0, 0, arc4random()% 100 + 50, arc4random()% 50 + 50);
    
    //1.判断代理对象是否实现了对应的方法
    //2.如果事项了就让代理调用对应的方法
    if ([self.delegate respondsToSelector:@selector(actionViewTouchBegean:)]) {
        [self.delegate actionViewTouchBegean:self];
    }
    //[self.delegate actionViewTouchBegean:self];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    // self.backgroundColor = [UIColor random];
    if ([self.delegate respondsToSelector:@selector(actionViewTouchEnd:)]) {
        [self.delegate actionViewTouchEnd:self];
    }
    
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    //self.backgroundColor = [UIColor random];
    if ([self.delegate respondsToSelector:@selector(actionViewTouchMoved:)]) {
        [self.delegate actionViewTouchMoved:self];
    }
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{
    if ([self.delegate respondsToSelector:@selector(actionViewTouchCancelled:)]) {
        [self.delegate actionViewTouchCancelled:self];
    }
}
@end
