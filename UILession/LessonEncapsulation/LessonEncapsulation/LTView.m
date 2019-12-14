//
//  LTView.m
//  LessonEncapsulation
//
//  Created by lanouhn on 14/10/27.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "LTView.h"




@interface LTView ()


@property (nonatomic, retain) UITextField *text;

@property (nonatomic, retain) UILabel *text1;

@end

@implementation LTView

- (void)dealloc{
    [_text release];
    [_text1 release];
    [super dealloc];
}

//当创建LTview视图对象时调用inintWithframe 方法之后,视图对象创建完毕,创建完毕之后该视图就必须携带label和textfield,所以重写该方法,内部封装abel和textfield.
- (instancetype)initWithFrame:(CGRect)frame{

    self = [super initWithFrame:frame];
    if (self) {
        
        CGFloat with = frame.size.width;
        CGFloat height = frame.size.height;
        //创建label
        self.text1 = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, with / 3, height)];
        [self addSubview:_text1];
        [_text1 release];
        
        
        //创建textfield
        
        self.text = [[UITextField alloc]initWithFrame:CGRectMake(with / 3, 0, with / 3 * 2, height)];
        _text.borderStyle = UITextBorderStyleRoundedRect;
        [self addSubview:_text];
        [_text release];
        
        
    }
    return self;
}
- (void)setDescriptionText:(NSString *)text{
    _text1.text = text;
}

//设置显示文字
- (void)setTextField:(NSString *)text{
    _text.placeholder = text;
}
//设置密码模式

- (void)setScureEnty:(BOOL)setcueryEntry{
    _text.secureTextEntry = setcueryEntry;
}

//设置键盘类型

- (void)setKeyBoardType:(UIKeyboardType)keyboardtype{
    _text.keyboardType = keyboardtype;
}

- (NSString *)getText{
    return self.text.text;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [_text resignFirstResponder];
    return YES;
}

- (void)setTextFieldDelegate:(id<UITextFieldDelegate>)delegate{

    _text.delegate = delegate;
    
}
@end
