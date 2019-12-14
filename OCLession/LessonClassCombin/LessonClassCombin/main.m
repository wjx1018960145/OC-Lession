//
//  main.m
//  LessonClassCombin
//
//  Created by lanouhn on 14-10-7.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ManClass.h"
#import "WomanClass.h"
#import "ChildClass.h"
#import "FamilyClass.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
         NSLog(@"在一个漆黑的晚上!");
        ManClass *wang=[[ManClass alloc] init];
        [wang setName:@"wjx"];
        
        NSLog(@"与此同时,王力出生了");
        
        WomanClass *wo=[[WomanClass alloc] init];
        [wo setName:@"lili"];
        NSLog(@"20年后");
        FamilyClass *home=[[FamilyClass alloc] init];
        //给男人设置妻子
        [wang setWife:wo];
        [wo setHusband:wang];
        [home setHost:wang];
        [home setHostess:wo];
        NSLog(@"幸福来得太突然");
        ChildClass *ruhua=[[ChildClass alloc] init];
        [ruhua steName:@"如花"];
        [ruhua setFather:wang];
        [ruhua setMother:wo];
        [wo setChild:ruhua];//女人设置孩子
        [wang setChild:ruhua];//男人设置孩子
        [home setYoung:ruhua];//家庭设置孩子
        NSLog(@"一家人幸福美满 介绍一下");
        [wang sayHi];//男人介绍
        [wo sayHi];//女介绍
        [ruhua sayHi];//孩子介绍
        [home sayHi];
        
    }
    return 0;
}

