//
//  Teacher.m
//  LessonMemaoryHeight
//
//  Created by lanouhn on 14-10-21.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "Teacher.h"

@implementation Teacher

- (void)dealloc
{
    //自身对象销毁之前,将retain 的之前的所有对象全部release掉
    [_name release];
    [_gender release];
    NSLog(@"tea空间回收");
    [super dealloc];
}

- (void)sayHi
{
    NSLog(@"hello word");
}

- (id)copyWithZone:(NSZone *)znoe
{
//1创建新的teacher对象
    Teacher *tea = [[Teacher alloc]init];
     //2 将原有的对象拷贝到新的空间对象中
    tea.name = self.name;
    tea.gender = self.gender;
    tea.age=self.age;
    return tea;
}

- (id)initWithName:(NSString *)name gender:(NSString *)gender age:(NSInteger)age
{
    if (self) {
        self.name = name;
        //_name = name;
        self.gender = gender;
        self.age = age;
    }
    return self;
}
+ (id)teacherWithName:(NSString *)name gender:(NSString *)gender age:(NSInteger)age
{
    Teacher *tea =[[Teacher alloc]initWithName:name gender:gender age:age];
    
    return [tea autorelease];
    
}

//死循环
//- (void)setName:(NSString *)name
//{
//    self.name = name;
//}
@end
