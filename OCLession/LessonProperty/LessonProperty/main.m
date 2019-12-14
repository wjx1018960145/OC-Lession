//
//  main.m
//  LessonProperty
//
//  Created by lanouhn on 14-10-16.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
     
        Student *student = [[Student alloc]init];
        //_name
       // [student setName:@"laowang"];
        student.name=@"laowang";
        NSString *name = student.name;
        NSLog(@"%@",name);
        
        //_gende
        
        student.gender = @"男";//[student setGender:@"男"];
        NSString *gender =student.gender; //[student gender];
        NSLog(@"%@",gender);
        //_Number
       student.number = @"";// [student setNumber:@"12312"];
        NSString *num =student.number;// [student number];
        NSLog(@"%@",num);
        //_age;
        student.age = 12;//[student age];
        NSInteger age = student.age;//[student age];
        NSLog(@"%ld",age);
        
        //_score
        student.score = 12; [student setScore:12];
        CGFloat score = student.score;//[student score];
        //_height
        student.height = 12; [student setHeight:12];
        CGFloat hei =student.height;// [student height];
        //_weight;
        student.weight = 12;// [student setWeight:23];
        CGFloat wei =student.weight;// [student weight];
        
        //_phoneNumber
        student.phoneNumber = @"23";// [student setPhoneNumber:@"23"];
        NSString *phone = [student phoneNumber];
        //address
       student.address = @"花园";// [student setAddress:@"花园"];
        NSString *add = student.address;// [student address];
        //hobby
       student.hobby = @"A"; // [student setHobby:@"A"];
        NSString *hobby =student.hobby;// [student hobby];
        
        //bloodType;
        student.bloodType = @"";//[student setBloodType:@"ere"];
        NSString *nlood = student.bloodType;//[student bloodType];
        //ismrride
//        [student setIsMrried:YES];
//        BOOL is = [student ismrried];
        NSLog(@"%f %f %f %@ %@ %@ %@",score,hei,wei,phone,add,hobby,nlood);
        
        
    }
    return 0;
}

