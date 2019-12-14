//
//  Student.m
//  LessonMemaoryHeight
//
//  Created by lanouhn on 14-10-21.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "Student.h"
#import "Teacher.h"
@implementation Student
- (void)setTea:(Teacher *)tea
{
    if (_tea != tea) {
        
        [_tea release];
        
        _tea = [tea retain];
    }
        
    
 
    
    
    //当把语义特性设置为assign时 内部只是简单赋值操作
//    if (_tea != tea) {
//        
//        [_tea release];//释放掉之前的所有权
//        
//        _tea = [tea retain];//保有原有的对象的所有权
//        
//    }
    
    
}

- (void)setTeacher:(Teacher *)teacher
{
    if (_teacher != teacher) {
        [_teacher release];
        _teacher = [teacher copy];
    }
}

//当对象引用计数为0时,会调用该对象的dealloc方法,用来回收该对象的空间,对象销毁.

- (void)dealloc
{
    //当自对象将要销毁时,将保有的其他对象的所有权全部回收
    [_tea release];
    [_teacher release];
    NSLog(@"stu空间释放");
    [super dealloc];
}

@end
