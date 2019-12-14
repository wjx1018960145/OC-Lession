//
//  addController.h
//  LessonCoreData
//
//  Created by lanouhn on 14/12/16.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <UIKit/UIKit.h>
//定义block
@class Student;
typedef void(^getStudentInfo)(Student *stu);
@interface addController : UIViewController
//创建对象
@property (nonatomic,copy) getStudentInfo info;
//定义外界实现一个方法
- (void)getInfoFromOutInterface:(getStudentInfo)info;

@end
