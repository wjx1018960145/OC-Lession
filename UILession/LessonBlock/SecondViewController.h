//
//  SecondViewController.h
//  LessonBlock
//
//  Created by lanouhn on 14/12/9.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <UIKit/UIKit.h>
//1定义声明block
typedef void(^getCustomColor)(UIColor *);

@protocol secondDelagate <NSObject>
- (void)getColor:(UIColor *)color;
@end
@interface SecondViewController : UIViewController
//2设置block对象
@property (nonatomic, copy) getCustomColor color;
//设置代理属性
@property (nonatomic, assign) id<secondDelagate>delagate;
//3 定义方法从外界传入block
- (void)getBlockFormOut:(getCustomColor)customcolor;
@end
