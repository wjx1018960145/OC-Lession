//
//  Man.h
//  LessonProtocol
//
//  Created by lanouhn on 14-10-18.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Women;
#import "Women.h"
//实现服从协议的方
@interface Man : NSObject <WomenDelegate>

@property (nonatomic, retain) NSString *name;//姓名
@property (nonatomic, retain) NSString *gender;//性别
@property (nonatomic) NSInteger age;//年龄
@property (nonatomic, retain) Women *weif;//妻子

- (void)playLoL;
@end
