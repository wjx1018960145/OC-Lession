//
//  LOButton.m
//  LessonComperhensive
//
//  Created by lanouhn on 14/10/31.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "LOButton.h"

@implementation LOButton
//遍历构造器创建按钮
+(LOButton *)buttomnWithFrame:(CGRect)frame normalImage:(UIImage *)normalImage highLightIMahe:(UIImage *)highLightIMahe selectImage:(UIImage *)selectImage{

    LOButton *button = [LOButton buttonWithType:UIButtonTypeCustom];
    button.frame = frame;
    //个按钮设置不同状态,设置不同图片
    [button setImage:normalImage forState:UIControlStateNormal];
    [button setImage:highLightIMahe forState:UIControlStateHighlighted];
    [button setImage:selectImage forState:UIControlStateSelected];
    return button;
}

@end
