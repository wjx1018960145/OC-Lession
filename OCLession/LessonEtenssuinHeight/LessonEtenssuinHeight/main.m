//
//  main.m
//  LessonEtenssuinHeight
//
//  Created by lanouhn on 14-10-22.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
//        Person *per = [[Person alloc]init];
//        //[per sayHi];
//        [per goodMorning];
//        NSTimer *tem = [[NSTimer alloc]init];
//        NSLog(@"%lu",(unsigned long)[tem retainCount]);
        NSString *name = [[NSString alloc]initWithString:@"张三"];
        NSLog(@"%lu",(unsigned long)[name retainCount]);  }
    return 0;
}

