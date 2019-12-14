//
//  main.m
//  LessonConditionCompile
//
//  Created by lanouhn on 14/10/29.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
#define AA

/*
 #include 与#import 区别
 //#import 可以避免重复导入,防止交叉编译.
 "" 双引号导入自定义头文件
 <> 尖括号 导入系统头文件
 */
//#import "Header.h" //#include 相当于拷贝了一份此文件里的东西
//#import "Header.h" //#import

//#include "Header.h"
//#include "Header.h"




//int function(int x, int y){
//    
//    return x > y ? x : y;
//    
//}
int main(int argc, const char * argv[]) {
    //条件编译 :按照一定的条件选择编译
    
    //int a = 3;
#ifdef AA
    int a = 10;
    
#else
    int a = 20;
    
#endif
    printf("%d",a);
    
#ifndef AA
    
    int b = 30;
    
#else
    
    int b = 40;
    
#endif
    
    printf("%d",b);
    
    
#if !5
    int c = 10;
#else
    int c  = 5;
    
#endif
    printf("%d",c);
    
    extern int n;
    printf("%d",n);
    
    
    //int b=0;
//    int a=4;
//    if (a>3) {
//        int b = 10;
//    }else{
//        
//         int b = 20;
//    }
    
    return 0;
}
