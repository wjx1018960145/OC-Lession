//
//  Lottery.h
//  LessonObjectAndClass
//
//  Created by lanouhn on 14-10-6.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Lottery : NSObject

{

    NSCalendarDate *enyty;
    int fistnumber;
    int secnumber;
}
-(void)perparRandomnumber;
-(void)setEntryDeta:(NSCalendarDate *)date;
-(void)entryDate:(NSCalendarDate *)entryDate;
-(int)fistnumber;
-(int)secNumber;
- (NSString *)description;
@end
