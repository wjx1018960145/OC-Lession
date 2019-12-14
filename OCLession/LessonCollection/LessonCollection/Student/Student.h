//
//  Student.h
//  LessonCollection
//
//  Created by lanouhn on 14-10-13.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//


#import "Person.h"
@class Teacher;
@interface Student : Person
{
    NSInteger _stuId;
    NSInteger _stuScore;
    NSString *_stuMajor;
   @private
    NSMutableArray *_teaArry;
}
@property(nonatomic, readwrite) NSInteger _stuId;
@property(nonatomic, readwrite) NSInteger _stuScore;
@property(nonatomic, retain) NSString *_stuMajor;
- (id)initWithName:(NSString *)name gender:(NSString *)gender age:(NSInteger)age;
+(id)studentWithName:(NSString *)name gender:(NSString *)gender age:(NSInteger)age;

- (void)avgScore;
- (void)sumSocre;
- (void)disScore;
- (void)addCourse;
- (void)gradeToTeacher:(Teacher *)tea;

@end
