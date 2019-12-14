//
//  main.m
//  LessonIncludeandImpoer
//
//  Created by lanouhn on 14-10-22.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
#define xxx 0
#define hhh 1
#define www
int main(int argc, const char * argv[])
{

    @autoreleasepool {
#if xxx
        
        printf("123");
#else //hhh
        printf("12323");
#endif
        printf("");

#ifdef zzz 
        printf("ewqw");
#endif
#ifndef www
        printf("sdfsdfsdfdf");
#else 
        printf("sdfsfdsdf23234");
#endif
        
    }
    return 0;
}

