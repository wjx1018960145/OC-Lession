//
//  Student.m
//  LessonInherit
//
//  Created by lanouhn on 14-10-8.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "Student.h"

@implementation Student


- (id)initWithName:(NSString *)name gender:(NSString *)gender age:(NSInteger)age weight:(NSInteger)weight height:(NSInteger)height bloodType:(NSString *)bloodType number:(NSString *)number score:(NSInteger)score grade:(NSString *)grade
{
//    _name = name;
//    _gender = gender;
//    _age = age;
//    _weight = weight;
//    _height = height;
//    _bloodType = bloodType;

    self = [super initWithName:name gender:gender age:age weight:weight height:height bloodType:bloodType];
    if (self) {
        _number = number;
        _score = score;
        _gender = grade;
    }
  
    return self;

}
- (void)setNumber:(NSString *)number
{
    _number = number;
}
- (NSString *)number
{
    return _number;
}
- (void)setGrade:(NSString *)grade
{
    _gender = grade;
}
- (NSString *)grade
{
    return _gender;
}
- (void)setScore:(NSInteger)score
{
    _score = score;
}
-  (NSInteger)score
{
    return _score;
}

@end
