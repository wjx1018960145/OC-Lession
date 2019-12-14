//
//  PanView.m
//  LessionTouch
//
//  Created by lanouhn on 14/10/29.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "PanView.h"

@implementation PanView


//如果视图相对触摸事件做出相应事件,需要实现一下处理触摸事件方法.
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    
}
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    //1获得移动之前的点的位置,
    CGPoint periouPoint = [touch previousLocationInView:self];
    //2获得移动之后的点的位置
    CGPoint currentPoint = [touch locationInView:self];
    //3.计算出两者的变化量
    CGFloat dx = currentPoint.x - periouPoint.x;
    CGFloat dy = currentPoint.y - periouPoint.y;
    
    //4.改变视图center
    self.center = CGPointMake(self.center.x + dx, self.center.y + dy);
}
- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    
}
@end
