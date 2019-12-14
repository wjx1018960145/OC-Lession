//
//  Teacher.h
//  LessonInherit
//
//  Created by lanouhn on 14-10-8.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "Person.h"

@interface Teacher : Person
{
    NSString *_couserName;//教授课程
    NSString *_teaNumber;//职工号
}
- (id)initWithName:(NSString *)name gender:(NSString *)gender age:(NSInteger)age weight:(NSInteger)weight height:(NSInteger)height bloodType:(NSString *)bloodType couserName:(NSString *)couserName teaNumber:(NSString *)teaNumber;
//set and get
- (void)setCouserName:(NSString *)couserName;
- (NSString *)couserName;
- (void)setTeaNumber:(NSString *)teaNumber;
- (NSString *)teaNumber;

@end
