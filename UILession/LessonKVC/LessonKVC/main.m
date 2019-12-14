//
//  main.m
//  LessonKVC
//
//  Created by lanouhn on 14/11/10.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        /*
        Person *per = [[Person alloc] init];
        //给实例变量_name赋值.
        //1.set放法
        // per.name = @"蓝鸥";
        //kvc方法
        [per setValue:@"蓝鸥" forKey:@"_name"];
        [per valueForKey:@"_name"];
        
        NSLog(@"%@",[per valueForKey:@"_name"]);
        NSLog(@"%@",per);
         */
        
//        Student *stu = [[Student alloc] init];
//        Person *per = [[Person alloc] init];
//        stu.per = per;
//        //给per赋值
//        //stu.per.name = @"蓝鸥";
//        [stu setValue:@"蓝鸥" forKeyPath:@"per.name"];
//        [[stu valueForKey:@"per"] setValue:@"lanou" forKeyPath:@"_name"];
//        NSLog(@"%@",per);
        
        Person *per = [[Person alloc] init];
//         [per setValue:@"王军鑫" forKey:@"name"];
//         [per setValue:@"21" forKey:@"age"];
//         [per setValue:@"男" forKey:@"gender"];
//         [per setValue:@"A" forKey:@"type"];
//         [per setValue:@"花园录" forKey:@"address"];
//        [per setValue:@"12345" forKey:@"phone"];
       // NSLog(@"%@",per);
        NSDictionary *dic =@{@"name":@"王",@"gender":@"man",@"age":@"23",@"phone":@"123",@"type":@"A",@"lanou":@"B"};
        [per setValuesForKeysWithDictionary:dic];
        NSLog(@"%@",per);
        
        
        
    }
    return 0;
}
