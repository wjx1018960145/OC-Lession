//
//  LoginView.h
//  LessionUIViewController
//
//  Created by lanouhn on 14/10/28.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface LoginView : UIView

//给外界声明三个控件的接口
@property (nonatomic, retain) UILabel *userName;
@property (nonatomic, retain) UITextField *textfield;
@property (nonatomic, retain) UIButton *loginBtu;

@end
