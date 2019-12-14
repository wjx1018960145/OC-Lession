//
//  Register.m
//  LessonComperhensive
//
//  Created by lanouhn on 14/10/31.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "Register.h"
#import "LTView.h"
#import "LOButton.h"
#define kMargin_Top  30
@implementation Register
-(instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        
        //设置颜色
        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg"]];
        CGFloat x = 0;
        //CGFloat y = kMargin_Top;
        CGFloat width = frame.size.width;
        CGFloat height = 55;
        
        NSArray *labelArr = @[@"邮箱",@"用户名",@"密码",@"推荐人"];
        NSArray *textArr = @[@"邮箱地址",@"用户名",@"4-12字符",@"推荐人用户名"];
     NSArray *arr = @[@(LTViewStyleUP),@(LTViewStyleMIddle),@(LTViewStyleMIddle),@(LTViewStyleDown)];
      NSInteger y =40;
      for (int i=0; i<4; i++) {
      LTView *ltview = [[LTView alloc]initWithFrame:CGRectMake(0, y, 320, 55)style:[arr[i] intValue]];
         
        [ltview setLabelText:labelArr[i]];
        [ltview setTextFieldText:textArr[i]];
    [self addSubview:ltview];
    [ltview release];
    y +=50;
        }
        
        x = 50;
        y += 45;
        
        width = 220;
        height = 55;
        LOButton *lobutton = [LOButton buttomnWithFrame:CGRectMake(x, y, width, height) normalImage:[UIImage imageNamed:@"register_btn_normal"] highLightIMahe:[UIImage imageNamed:@"register_btn_press"] selectImage:[UIImage imageNamed:nil]];
        [self addSubview:lobutton];
    }
    return self;
    
    }


@end
