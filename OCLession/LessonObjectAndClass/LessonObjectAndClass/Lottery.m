//
//  Lottery.m
//  LessonObjectAndClass
//
//  Created by lanouhn on 14-10-6.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "Lottery.h"

@implementation Lottery
-(void)perparRandomnumber
{
    fistnumber = arc4random()%(100-1+1)+1;
    secnumber = arc4random()%(200-1+1)+1;
}
-(void)setEntryDeta:(NSCalendarDate *)date
{
    enyty = date;
}
-(void)entryDate:(NSCalendarDate *)entryDate;
{
  entryDate=entryDate;
}
-(int)fistnumber
{
    return fistnumber;
}
-(int)secNumber
{
    return secnumber;
}

//- (NSString *)description
//{
//    NSString *resule;
//    resule=[[NSString alloc]initWithFormat:@"%@ = %d and %d",[entryDate descriptionWithCalendarFormat:@"%b %d %Y"],fistnumber, secnumber];
//    
//            return resule;
//}

@end
