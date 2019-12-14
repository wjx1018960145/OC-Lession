//
//  AppDelegate.m
//  LessionUIViewController
//
//  Created by lanouhn on 14/10/28.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "AppDelegate.h"
#import "RootViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate

/*
 工厂模式:
 1 抽象工厂:提供一个抽象的基类,比如:UIview关于视图的基本属性以及管理视图层级关系的基本方法,uicontroller提供了关于视图控制的基础功能.在使用时使用具体子类.UIlabel UIbutton
 2 工厂方法:快速创建类的对象,(便利构造器)
 3 对象工厂 :快速创建其他类的对象
 
 */

/*
 1 设计模式: 就是一种固定的方法,解决特定的问题,有自己的使用场景.
 2 设计思想: 是一种编程思想,比较灵活,要通过多种设计模式实现.
 */

/*
 MVC设计思想
 M:(model)数据提供方,专门提供数据
 V:(view)数据显示方, 专门用来显示数据.
 C:(UIcontroller)控制层(中介)协调M与V之间的通讯,作为v和m的通讯中介,v要显示数据,给c要,c给m 要数据,M把数据给c,把数据给v显示
 */

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    //创建视图控制器
    RootViewController *rootcontroller = [[RootViewController alloc]init];
    //指定window根视图控制器
    self.window.rootViewController = rootcontroller;
    //释放
    [rootcontroller release];
    
    
    [_window release];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (void)dealloc{
    [_window release];
    [super dealloc];
    
}
@end
