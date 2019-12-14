//
//  main.m
//  LessonMemaoryHeight
//
//  Created by lanouhn on 14-10-21.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Teacher.h"
#import "Student.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //便利构造器内存管理
//        Teacher *tea1 = [Teacher teacherWithName:@"Frank" gender:@"man" age:12];
//        
//        
//        NSLog(@"fantest");
//        //初始化方法
//        NSString *name = [[NSString alloc]initWithFormat:@"Frank"];//0-1
//        NSString *gender= [[NSString alloc]initWithFormat:@"man"];//00-1
//        
//        Teacher *tea = [[Teacher alloc]initWithName:name gender:gender age:19];
//        
//
//        
//        [name release];
//        [gender release];
//        [tea release];//1--0
        
        //copy内存管理
        Teacher *tea1 = [[Teacher alloc]init];
        tea1.name = @"Frank";
        tea1.gender = @"man";
        tea1.age = 18;
        
        
        Student *stu1 = [[Student alloc]init];
        
        stu1.teacher = tea1; //tea1 1
        [tea1 release];
        [stu1 release];
//        Teacher *tea  = [[Teacher alloc]init];//0--1
//        Teacher *tea1 = [[Teacher alloc]init];//0--1
//        Teacher *tea2 = [[Teacher alloc]init];//0--1
//        
//        
//        Student *stu = [[Student alloc]init];//0--1
//        
//        stu.tea = tea;//tea 1--2
//        
//        [tea release];//tea 2---1
//        //[stu.tea sayHi];
//        //给实例变量下划线tea重新赋值
//        
//        stu.tea = tea1;//tea1 1--2 tea 1--0
//        
//        [tea1 release];// tea1 2--1
//        
//       // stu.tea = tea1;
//        
//        stu.tea = tea2;//tea2 1--2
//        
//        [tea2 release];//tea2 2--1
//        
//        [stu release];
//        
//        NSLog(@"%lu",[tea retainCount]);
        
        
        
        
        
        
//        tea.name = @"Frank";
//        tea.gender = @"man";
//        tea.age = 18;
//        
//        Student *stu = [[Student alloc]init];//0--1
//        
//        stu.tea = tea;//2
//        [tea release];
//        stu.tea = tea;
        
        
//        NSLog(@"%lu",[tea retainCount]);
//        
//        [tea release];//2--1
//       // NSLog(@"%@",stu.tea.name);
//        //此时 tea对象的空间已经被系统回收,不能访问,易造成野指针问题.
//        [stu.tea sayHi];
//        Teacher *tea1 = [[Teacher alloc] init];//0---1
//         stu.tea = tea1;
//        NSLog(@"%lu",[tea1 retainCount]);
       
    }
//    
//    @autoreleasepool {
//        @autoreleasepool {
//            for (long  i = 0; i < 10000; i++) {
//                Teacher *tea = [Teacher teacherWithName:@"Frank" gender:@"man" age:33];
//            }
//
//        }
//            }
    
    return 0;
}

