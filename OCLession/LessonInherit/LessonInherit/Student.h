//
//  Student.h
//  LessonInherit
//
//  Created by lanouhn on 14-10-8.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "Person.h"

@interface Student : Person

{
    NSString *_number;//学号
    CGFloat _score;//成绩
    NSString *_grade;//年纪
}
- (id)initWithName:(NSString *)name gender:(NSString *)gender age:(NSInteger)age weight:(NSInteger)weight height:(NSInteger)height bloodType:(NSString *)bloodType number:(NSString *)number score:(NSInteger)score grade:(NSString *)grade;
- (void)setNumber:(NSString *)number;
- (NSString *)number;
- (void)setGrade:(NSString *)grade;
- (NSString *)grade;
- (void)setScore:(NSInteger)score;
-  (NSInteger)score;
@end
