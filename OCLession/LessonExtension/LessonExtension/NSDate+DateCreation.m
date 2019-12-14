//
//  NSDate+DateCreation.m
//  LessonExtension
//
//  Created by lanouhn on 14-10-17.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "NSDate+DateCreation.h"

@implementation NSDate (DateCreation)

+ (NSDate *)dateWithDateString:(NSString *)dateString
{
    NSDateFormatter *date1 = [[NSDateFormatter alloc]init];
    [date1 setDateFormat:@"yyyyMMddHHmmss"];
    
    NSDate *from1 = [date1 dateFromString:dateString];
    return from1;
}

+ (NSString *)dateWithStringDate:(NSDate *)dateDate
{
    NSDateFormatter *date1 = [[NSDateFormatter alloc]init];
    [date1 setDateFormat:@"yyyy年MM月dd日 HH:mm:ss"];
    NSString *form1 = [date1 stringFromDate:dateDate];
    return form1;
}
@end
