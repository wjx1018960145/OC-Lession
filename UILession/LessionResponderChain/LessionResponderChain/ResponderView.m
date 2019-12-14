//
//  ResponderView.m
//  LessionResponderChain
//
//  Created by lanouhn on 14/10/29.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "ResponderView.h"

@implementation ResponderView

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    switch (self.tag) {
        case 100:
            NSLog(@"红色视图处理");
            break;
            case 101:
            NSLog(@"黄色视图处理");
            break;
            case 102:
            NSLog(@"绿色视图处理");
            break;
            case 103:
            NSLog(@"蓝色视图处理");
            break;
        default:
            break;
    }
    
}

@end
