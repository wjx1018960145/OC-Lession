//
//  Student.h
//  LessonMemaoryHeight
//
//  Created by lanouhn on 14-10-21.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Teacher;
@interface Student : NSObject

@property (nonatomic,retain) Teacher *tea;
@property (nonatomic, copy) Teacher *teacher;
@end
