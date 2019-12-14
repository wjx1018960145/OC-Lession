//
//  LTView.h
//  LessonEncapsulation
//
//  Created by lanouhn on 14/10/27.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextField.h"

//LTview 自定义视图 内部封装了 左边是一个label 右边是textfield控件

//LTview 要提供给外界设置label以及textfield接口


@interface LTView : UIView <textFieldDelegate>
//显示文字
- (void)setDescriptionText:(NSString *)text;
//设置显示文字
- (void)setTextField:(NSString *)text;
//设置密码模式
- (void)setScureEnty:(BOOL)setcueryEntry;
//设置键盘类型
- (void)setKeyBoardType:(UIKeyboardType)keyboardtype;
//获取输入框中的文字
- (NSString *)getText;


@end
