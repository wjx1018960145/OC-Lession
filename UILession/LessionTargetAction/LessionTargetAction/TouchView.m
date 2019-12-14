//
//  TouchView.m
//  LessionTargetAction
//
//  Created by lanouhn on 14/10/30.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "TouchView.h"
#import "UIColor+Random.h"

@interface TouchView ()
{
 id _target;
 SEL _action;
 UIControlEvents _controlEvevts;
}
@end







@implementation TouchView
//如何把握问题的重点
//重点:当遇到类似的问题时采用哪种方法解决,
//1.改变视图位置
//2.改变视图大小 保持中心点不变---bounts

/*
 Toucha不够灵活 当外界需求变更时toucha内部需要跟=更新触摸响应操作
 toucha 灵活:不让touchView处理事件,给touchview指定响应触摸事件的人和触摸方法(action)
 
 */

//target -- 人
//方式
//controlevent 时机
//Touch--超群
- (void)addTarget:(id)target action:(SEL)action controlEvevt:(UIControlEvents)controlevent{
    //存储外界传入的响应的对象,以及响应方法,触发时机,方便以后使用
    
    _target = target;
    _action = action;
    _controlEvevts = controlevent;
}
//超群 ---手碰到脸
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    //根据视图的tage值判断是哪个视图
    
    if (_controlEvevts == UIControlEventTouchDown) {
        //让target执行action方法
        [_target performSelector:_action withObject:self];
    }
    
//    switch (self.tag) {
//        case 100:
//            //红色视图触发
//            self.backgroundColor = [UIColor random];
//            break;
//            case 101:
//            //绿色视图触发
//            self.superview.backgroundColor = [UIColor random];
//            break;
//            case 102:
//            self.center = CGPointMake(arc4random()%200 + 50, arc4random()% 400 + 50);
//            break;
//            case 103:
//            self.bounds = CGRectMake(0, 0, arc4random()% 250 + 50, arc4random()% 50 +50);
//            break;
//        default:
//            break;
//    }
    
    //self.backgroundColor = [UIColor random];
}
//超群 --- 手离开恋
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    if (_controlEvevts == UIControlEventTouchUpInside) {
        [_target performSelector:_action withObject:self];
    }
    
}
//超群 ---- 手在脸上滑动
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    
}

-(void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{
    
}


@end
