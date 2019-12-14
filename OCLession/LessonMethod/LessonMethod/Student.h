//
//  Student.h
//  LessonMethod
//
//  Created by lanouhn on 14-10-7.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
{
    NSString *_name;//姓名
    NSString *_gender;//项目
    NSInteger _age;//年龄
}
//初始化方法,为实例变量赋初值.
//customized init method
//初始化方法可以多个定义,但是初始化阶段初始化方法只能调用一次.
- (id)initWithName:(NSString *)name gender:(NSString *)gerder age:(NSInteger)age;


//set and get
- (void)setName:(NSString *)name;
- (NSString *)name;

- (void)setGender:(NSString *)gender;
- (NSString *)gender;

- (void)setAge:(NSInteger)age;
- (NSInteger)age;

- (void)sayHi;
//多参赋值方法
- (void)setName:(NSString *)name gender:(NSString *)gender age:(NSInteger)age;

@end
