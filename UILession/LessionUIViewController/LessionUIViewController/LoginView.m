//
//  LoginView.m
//  LessionUIViewController
//
//  Created by lanouhn on 14/10/28.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "LoginView.h"

#define kMargin_Left_Label 20 
#define kMargin_Top_LT     60
#define kMargin_Between_LT 20
#define kMargin_LT         30
#define kMargin_Label      80
#define kWidth_TextField  160
#define kMargin_Left_Buttom 60
#define kHeight_Button     40
#define kWidth_Button      120
#define kMargin_Button_BLT 30


@implementation LoginView

- (void)dealloc{
    
    [_userName release];
    [_textfield release];
    [_loginBtu release];
    [super dealloc];
    
}
- (instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        
        CGFloat dx = kMargin_Left_Label;
        CGFloat dy = kMargin_Top_LT;
        CGFloat width = kWidth_Button;
        CGFloat height = kHeight_Button;
        _userName = [[UILabel alloc]initWithFrame:CGRectMake(dx, dy, width, height)];
        _userName.text = @"用户名";
        [self addSubview:_userName];
        [_userName release];
        
        dx += width + kMargin_Between_LT;
        dy = dy;
        width = kWidth_TextField;
        height = height;
        _textfield = [[UITextField alloc] initWithFrame:CGRectMake(dx, dy, width, height)];
        _textfield.placeholder = @"请输入用户名";
        _textfield.borderStyle = UITextBorderStyleRoundedRect;
        [self addSubview:_textfield];
        [_textfield release];
        //button
        dx = kMargin_Left_Buttom;
        dy = dy + height + kMargin_Button_BLT;
        width = kWidth_Button;
        height = height;
        
        _loginBtu = [UIButton buttonWithType:UIButtonTypeSystem];
        _loginBtu.frame = CGRectMake(dx, dy, width, height);
        [_loginBtu setTitle:@"登录" forState:UIControlStateNormal];
        [self addSubview:_loginBtu];
        
        
    }
    return self;
}
//当旋转时触发,视图调用该方法 重新布局子视图.
//- (void)layoutSubviews {
//    //获取屏幕的旋转方向
//    switch ([UIApplication sharedApplication].statusBarOrientation) {
//        case UIInterfaceOrientationPortrait:
//          
//            case UIInterfaceOrientationPortraitUpsideDown:
//            _loginBtu.frame = CGRectMake(kMargin_Left_Buttom, 110, 120, kHeight_Button);
//            NSLog(@"竖直");
//            break;
//            case UIInterfaceOrientationLandscapeLeft:
//           
//           
//            case UIInterfaceOrientationLandscapeRight:
//            NSLog(@"横屏幕");
//            _loginBtu.frame = CGRectMake(300, 60, 120, 40);
//            break;
//        default:
//            break;
//    }
//    
//    
//   // NSLog(@"王test");
//}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
