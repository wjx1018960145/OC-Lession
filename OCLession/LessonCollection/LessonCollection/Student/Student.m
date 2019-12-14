//
//  Student.m
//  LessonCollection
//
//  Created by lanouhn on 14-10-13.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "Student.h"

@implementation Student
@synthesize _stuId;
@synthesize _stuScore;
@synthesize _stuMajor;
- (id)initWithName:(NSString *)name gender:(NSString *)gender age:(NSInteger)age
{
    if (self) {
        _name = name;
        _gender = gender;
        _age = age;
    }
    return self;
}
+(id)studentWithName:(NSString *)name gender:(NSString *)gender age:(NSInteger)age
{
    Student *stu = [[Student alloc] initWithName:name gender:gender age:age];
    return stu;
}

- (void)avgScore{}
- (void)sumSocre{}
- (void)disScore{}
- (void)addCourse{}
- (void)gradeToTeacher:(Teacher *)tea{}
@end
