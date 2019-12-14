//
//  Teacher.h
//  LessonCollection
//
//  Created by lanouhn on 14-10-13.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "Person.h"
#import "Student.h"
@interface Teacher : Person
{
    NSInteger _teaId;
    NSString *_teaCourse;
    NSMutableArray *_stuArry;
    NSMutableDictionary *_StuDic;
}

@property(nonatomic, readwrite) NSInteger _teaId;
@property(nonatomic, retain) NSString *_teaCourse;

- (void)addStu:(Student *)stu;
- (void)rollCallStu:(Student *)stu;
- (void)deleterStu:(Student *)stu;
- (void)showAllStu:(Student *)stu;

@end
