//
//  NSDate+DateCreation.h
//  LessonExtension
//
//  Created by lanouhn on 14-10-17.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (DateCreation)
//通过日期字符串 快速创建日期nsdate对象
+ (NSDate *)dateWithDateString:(NSString *)dateString;
+ (NSString *)dateWithStringDate:(NSDate *)dateDate;
@end
