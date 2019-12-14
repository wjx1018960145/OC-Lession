//
//  main.m
//  LessonInherit
//
//  Created by lanouhn on 14-10-8.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommonZombie.h"
#import "BarrierZombie.h"
#import "BucketZombie.h"
#import "Teacher.h"
#import "Compter.h"
int main(int argc, const char * argv[])
{

    
    
    @autoreleasepool {
//        
//        CommonZombie *chaoqun=[[CommonZombie alloc] initWithKind:@"普通僵尸" totalBlood:50 lostBlood:3];
//        [chaoqun beat];//打击
//        [chaoqun del];//
//        BarrierZombie *ruhua=[[BarrierZombie alloc] initWithKind:@"路障僵尸" totalBlood:80 lostBlood:2 prop:@"路障" weakness:@"怕砸蛋"];
//        [ruhua beat];
//        [ruhua lostBlood];
//        [ruhua del];
//        BarrierZombie *xiaoqiang=[[BarrierZombie alloc] initWithKind:@"铁桶僵尸" totalBlood:120 lostBlood:1 prop:@"铁桶" weakness:@"怕磁铁"];
//        [xiaoqiang beat];
//        [xiaoqiang lostBlood];
//        [xiaoqiang del];
        Teacher *duck=[[Teacher alloc] initWithName:@"duck" gender:@"男" age:30 weight:79 height:170 bloodType:@"A" couserName:@"ios" teaNumber:@"3838"];
        [duck sayHi];
        //便利构造器(内部封装了创建对象的操作)
        Compter *cpom=[Compter compter];
        
        //
        
    }
    return 0;
}

