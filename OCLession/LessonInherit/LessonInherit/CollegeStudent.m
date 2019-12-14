//
//  CollegeStudent.m
//  LessonInherit
//
//  Created by lanouhn on 14-10-8.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "CollegeStudent.h"

@implementation CollegeStudent

- (id)initWithName:(NSString *)name gender:(NSString *)gender age:(NSInteger)age weight:(NSInteger)weight height:(NSInteger)height bloodType:(NSString *)bloodType number:(NSString *)number score:(NSInteger)score grade:(NSString *)grade magor:(NSString *)major collage:(NSString *)collage degree:(NSString *)degree
{
//    _name = name;
//    _gender = gender;
//    _age = age;
//    _weight = weight;
//    _height = height;
//    _bloodType = bloodType;
//    
//    _number = number;
//    _score = score;
//    _gender = grade;
    //调用父类对该方法的实现为父类继承过来的实例变量赋初值.
    self = [super initWithName:name gender:gender age:age weight:weight height:height bloodType:bloodType number:number score:score grade:grade];
    if (self) {
        //只有为父类继承过来的实例变量赋值成功再为自己的实例变量赋初值.
        //为自己独有的实例变量赋值.
        _major = major;
        _college = collage;
        _degree = degree;
      
    }
    //只为自己独有的实例变量赋值
    
      return self;
}

- (void)setMajor:(NSString *)major
{
    _major = major;
}
- (NSString *)major
{
    return _major;
}
- (void)setCollage:(NSString *)collage
{
    _college = collage;
}
- (NSString *)clloage
{
    return _college;
}
- (void)setDegree:(NSString *)degree
{
    _degree = degree;
}
- (NSString *)degree
{
    return _degree;
}
@end
