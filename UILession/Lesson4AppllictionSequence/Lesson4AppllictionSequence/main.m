//
//  main.m
//  Lesson4AppllictionSequence
//
//  Created by lanouhn on 14/10/27.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "TestDelegate.h"
int main(int argc, char * argv[]) {
    @autoreleasepool {
        /*
         UIApplicationMain 三大功能:
         1 创建应用程序对象,每一个应用程序都是一个UIApplication的对象
         2 设置应用程序代理 ,检测应用程序状态(何时加载合适进后台).
         3 创建事件循环,(runloop 死循环 )及时处理用户的交互.
         
         
         */
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
