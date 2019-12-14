//
//  LTView.h
//  LessonComperhensive
//
//  Created by lanouhn on 14/10/31.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum LYViewStyle{
    LTViewStyleUP,
    LTViewStyleMIddle,
    LTViewStyleDown
    
}LTViewStyle;

@interface LTView : UIView
//提供外接初始化方法可以灵活设置bgxiew显示
- (instancetype)initWithFrame:(CGRect)frame style:(LTViewStyle)style;

//提供接口设置label显示的文子接口
- (void)setLabelText:(NSString *)text;
//设置文本框显示文字接口
- (void)setTextFieldText:(NSString *)text;

//设置密码模式接口
- (void)setPasswordStyle:(BOOL)passwordstyle;

//设置键盘回收接口
- (void)setDelegate:(id<UITextFieldDelegate>)delegate;
//设置清除按钮模式接口

- (void)setCleatButtonMode:(UITextFieldViewMode)clearButtonMode;

//获取输入框中的内容接口

- (NSString *)text;

@end
