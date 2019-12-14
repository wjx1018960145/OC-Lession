//
//  Singteton.h
//  LessonUInavigationConllerPassValue
//
//  Created by lanouhn on 14/11/5.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Singteton : NSObject
//main shared standared default 开头的加号方法都是单例方法
+ (Singteton *)sharedSingteton;
@property (nonatomic, copy)NSString *firsttext;//存储第一个界面label上的文字
@property (nonatomic, copy)NSString *secondtext;//存储第一个界面输入框的文字
@end
