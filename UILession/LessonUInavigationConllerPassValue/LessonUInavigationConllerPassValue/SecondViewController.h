//
//  SecondViewController.h
//  LessonUInavigationConllerPassValue
//
//  Created by lanouhn on 14/11/5.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SecondViewControllerDelegate <NSObject>

- (void)passValueAction:(NSString *)text;


@end

@interface SecondViewController : UIViewController

@property (nonatomic, retain)NSString *text;//用来接受上一个页面存储的数据
@property (nonatomic, assign) id<SecondViewControllerDelegate>delegate;
@end
