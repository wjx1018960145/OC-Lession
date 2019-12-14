//
//  LoginView.m
//  LessonComperhensive
//
//  Created by lanouhn on 14/10/31.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "LoginView.h"
#import "LTView.h"
#import "LOButton.h"
#define kMargin_Top  30

@implementation LoginView

-(instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        
        //设置颜色
        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg"]];
        
        CGFloat x = 0;
        CGFloat y = kMargin_Top;
        CGFloat width = frame.size.width;
        CGFloat height = 55;
        NSArray *labelArr = @[@"M,F.账号",@"M,F.密码"];
        NSArray *textArr = @[@"用户名",@"密码"];
        NSArray *arr  = @[@(LTViewStyleUP),@(LTViewStyleDown)];
        for (int i=0; i<2; i++) {
            LTView *ltview = [[LTView alloc]initWithFrame:CGRectMake(x, y, width, height) style:[arr[i] intValue]];
            [ltview setLabelText:labelArr[i]];
            [ltview setTextFieldText:textArr[i]];
            
            [self addSubview:ltview];
            [ltview release];
            y +=55;
        }
        
        x = 50;
        y += 45;
        
        width = 220;
        height = 55;
        LOButton *lobutton = [LOButton buttomnWithFrame:CGRectMake(x, y, width, height) normalImage:[UIImage imageNamed:@"login_btn_normal"] highLightIMahe:[UIImage imageNamed:@"login_btn_press"] selectImage:[UIImage imageNamed:nil]];
        [self addSubview:lobutton];
        
      
        
    }
    return self;
}

@end
