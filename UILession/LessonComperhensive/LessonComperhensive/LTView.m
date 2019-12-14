//
//  LTView.m
//  LessonComperhensive
//
//  Created by lanouhn on 14/10/31.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "LTView.h"
#define kMarin_Left_Label    20
#define kMargin_Top_Label    10
#define kWidth_Label         80
#define kHeight_Label        35

#define kMargin_Betewwn_LT   10
#define kMargin_Top_TF       10
#define kWidth_TF            190
#define kHeight_TF           35


@interface LTView ()
@property (nonatomic, retain)UILabel *descriplabel;
@property (nonatomic, retain)UITextField *textfield;
@end


@implementation LTView
-(void)dealloc{
    [_descriplabel release];
    [_textfield release];
    [super dealloc];
}
- (instancetype)initWithFrame:(CGRect)frame style:(LTViewStyle)style{
    
    self = [super initWithFrame:frame];
    if (self) {
        //bgView 背景视图
        CGFloat x = 0;
        CGFloat y = 0;
        CGFloat width = frame.size.width;
        CGFloat height = frame.size.height;
        UIImageView *bgview = [[UIImageView alloc]initWithFrame:CGRectMake(x, y, width, height)];
        bgview.image = [self matchImageByLTYViewStyle:style];
        [self addSubview:bgview];
        [bgview release];
        
        //descriplabel 标签i
        
        x= kMarin_Left_Label;
        y = kMargin_Top_Label;
        width = kWidth_Label;
        height = kHeight_Label;
        self.descriplabel = [[UILabel alloc]initWithFrame:CGRectMake(x, y, width, height)];
        //_descriplabel.text = @"M,F账号";
        [self addSubview:_descriplabel];
        [_descriplabel release];
        
        //contatinterView
        x = x + width +kMargin_Betewwn_LT;
        y = kMargin_Top_TF;
        width = kWidth_TF;
        height = kHeight_TF;
        UIImageView *contatinterView = [[UIImageView alloc]initWithFrame:CGRectMake(x, y, width, height)];
        contatinterView.userInteractionEnabled = YES;
        contatinterView.image = [UIImage imageNamed:@"login_editor.png"];
        [self addSubview:contatinterView];
        [contatinterView release];
        
        //textField
        x = 15;
        y = 0;
        width = width-25;
        height = height;
        self.textfield = [[UITextField alloc]initWithFrame:CGRectMake(x, y, width, height)];
        //_textfield.placeholder = @"4-12字符";
        _textfield.backgroundColor = [UIColor clearColor];
        [contatinterView addSubview:_textfield];
        [_textfield release];
        
        
    }
    return self;
}
//匹配给定的枚举值对应的图片

- (UIImage *)matchImageByLTYViewStyle:(LTViewStyle)style{
    NSString *imageName = nil;
    switch (style) {
        case LTViewStyleUP:
            imageName = @"register_editor_upbg";
            break;
            case LTViewStyleMIddle:
            imageName = @"register_editor_midbg.png";
            break;
            case LTViewStyleDown:
            imageName = @"register_editor_downbg.png";
            break;
        default:
            break;
    }
    return [UIImage imageNamed:imageName];
    
}
//提供接口设置label显示的文子
- (void)setLabelText:(NSString *)text{
    
    _descriplabel.text = text;
}
//设置文本框显示文字
- (void)setTextFieldText:(NSString *)text{
    _textfield.text = text;
}

//设置密码模式接口
- (void)setPasswordStyle:(BOOL)passwordstyle{
    _textfield.secureTextEntry = passwordstyle;
}

//设置键盘回收接口
- (void)setDelegate:(id<UITextFieldDelegate>)delegate{
    _textfield.delegate = delegate;
}
//设置清除按钮模式接口

- (void)setCleatButtonMode:(UITextFieldViewMode)clearButtonMode{
    _textfield.clearButtonMode = clearButtonMode;
}

//获取输入框中的内容接口

- (NSString *)text{
    
    return _textfield.text;
}
@end
