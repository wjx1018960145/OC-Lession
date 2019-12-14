//
//  main.m
//  LessonMethod
//
//  Created by lanouhn on 14-10-7.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //c创建peson对象
//        Person *per = [[Person alloc] init];
//        //给实例变量赋值
//        [per setName:@"Frank"];
////        per->name = @"Frank";
////        per->gender = @"man";
//        [per setGender:@"man"];
////        per->age = 18;
//        [per setAge:39];
////        per->bloodType = @"0";
//        [per setBloodType:@"0"];
////        per->nation = @"汗";
//        [per setNation:@"汗"];
////        per->height = 170;
//        [per setHeight:170];
////        per->weight = 78;
//        [per setWeight:123];
////        per->isMarried = YES;
//        [per setIsMarried:YES];
//        NSString *name = [per name];
//        NSString *gender = [per gender];
//        NSInteger age = [per age];
//        NSString  *natin = [per nation];
//        NSInteger height = [per height];
//        NSInteger weiht = [per weight];
//        [per study];
//        [per sayHi];
//        [per work];
//        NSLog(@"name=%@,gender=%@ age=%ld nation=%@ height=%ld weight=%ld",name,gender,age,natin,height,weiht);
//        //在外界输出per值
//        /**
//         *  OC中的方法两种:
//         加号方法 类来调用,方法中不可以直接访问实例变量
//         减号方法 对象方法 实例方法 对象类调用,方法中可以直接访问实例变量.
//         */
//        NSInteger sum = [Person test3:1 b:2 c:3 d:4 e:5];
//        NSLog(@"%ld", sum);
//        Student *stu = [[Student alloc] init];
//        [stu setName:@"wnag"];
//        [stu setGender:@"man"];
//        [stu setAge:27];
//        [stu name];
//        [stu gender];
//        [stu age];
//        [stu sayHi];
//        [stu setName:@"Frank" gender:@"man" age:20];
        
        
        Student *stu = [[Student alloc] initWithName:@"Frank" gender:@"man" age:20];
        [stu setName:@"Duck" gender:@"man1" age:34];
        [stu sayHi];
        
    }
    return 0;
}

