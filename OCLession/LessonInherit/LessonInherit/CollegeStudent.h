//
//  CollegeStudent.h
//  LessonInherit
//
//  Created by lanouhn on 14-10-8.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "Student.h"

@interface CollegeStudent : Student
{
    NSString *_major;//专业
    NSString *_college;//学院
    NSString *_degree;//学历
}
- (id)initWithName:(NSString *)name gender:(NSString *)gender age:(NSInteger)age weight:(NSInteger)weight height:(NSInteger)height bloodType:(NSString *)bloodType number:(NSString *)number score:(NSInteger)score grade:(NSString *)grade magor:(NSString *)major collage:(NSString *)collage degree:(NSString *)degree;
//set and get
- (void)setMajor:(NSString *)major;
- (NSString *)major;
- (void)setCollage:(NSString *)collage;
- (NSString *)clloage;
- (void)setDegree:(NSString *)degree;
- (NSString *)degree;
@end
