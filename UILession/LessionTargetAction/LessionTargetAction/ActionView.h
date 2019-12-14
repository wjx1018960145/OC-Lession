//
//  ActionView.h
//  LessionTargetAction
//
//  Created by lanouhn on 14/10/30.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <UIKit/UIKit.h>
//如果自己定义协议步骤:
//1.在该类的.h中定义协议,
//2.为该类添加代理属性语义特性assign
//3.在其他文件中指定该类的代理对象
//4.让代理对象的类服从协议.
//5.代理事项协议中的方法.
//6.通知代理执行代理中的方法

//如果系统已经定义好协议步骤:
//1.在其他文件中指定该类的代理对象
//2.让代理对象的类服从协议.
//3.代理事项协议中的方法.

@class ActionView;
@protocol ActionViewDelegate <NSObject>

@optional
- (void)actionViewTouchBegean:(ActionView *)actionView;
- (void)actionViewTouchEnd:(ActionView *)actionView;
- (void)actionViewTouchMoved:(ActionView *)actionView;
- (void)actionViewTouchCancelled:(ActionView *)actionView;
@end


@interface ActionView : UIView
@property (nonatomic ,assign) id<ActionViewDelegate>delegate;
@end
