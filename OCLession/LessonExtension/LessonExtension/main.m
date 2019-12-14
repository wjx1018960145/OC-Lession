//
//  main.m
//  LessonExtension
//
//  Created by lanouhn on 14-10-17.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+SayHi.h"
#import "NSDate+DateCreation.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //
        NSString *str = [[NSString alloc] initWithFormat:@"lanou"];
        [str sayHi];
        NSString *fist=[str fistCharactor];
        NSLog(@"%@",fist);
        NSDate *date1 = [NSDate dateWithDateString:@"20140402142850"];
        
        NSLog(@"%@",date1);
        NSDate *date3 = [[NSDate alloc]initWithString:@"20140402142850"];
        NSString *date2 = [NSDate dateWithStringDate:date3];
        NSLog(@"%@",date2);
    }
    
    
    return 0;
}

