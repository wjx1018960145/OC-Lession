//
//  Student.m
//  LessonKVC
//
//  Created by lanouhn on 14/11/10.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "Student.h"

@implementation Student
-(void)dealloc {
    self.per = nil;
    
    [super dealloc];
}
@end
