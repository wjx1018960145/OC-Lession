//
//  AppDelegate.m
//  LessonManagerSubviews
//
//  Created by lanouhn on 14/10/24.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    //containterView
    UIView *contain = [[UIView alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
    contain.backgroundColor = [UIColor whiteColor];
    [self.window addSubview:contain];
    [contain release];
    
    /*
     frame, bounds, center 区别
     frame {60.184} 相对于父视图坐标原点的距离
     bounds {0,0} 相对于坐标原点的距离
     center {}相对于父视图坐标原点的距离
     矩形区域的位置是=由frame 决定的
     frame 变化,center 也变化
     center 变化 frame也变化
     biunds origin 变化 frame 不变 center 不变
     会改变自身的坐标原点的位置 影响子视图 
     biunts size(大小)变化 --  会保持视图的中心点不变,以中心点为基准缩放. frame 变化 center 不变化
     
     */
//    UIView *yel = [[UIView alloc]initWithFrame:CGRectMake(60, 184, 200, 200)];
//    yel.bounds = CGRectMake(0, 0, 100, 100);
//    NSLog(@"%@",NSStringFromCGRect(yel.frame));
//    NSLog(@"%@",NSStringFromCGPoint(yel.center));
//    NSLog(@"%@",NSStringFromCGRect(yel.bounds));
//    yel.backgroundColor = [UIColor yellowColor];
//    [contain addSubview:yel];
//    [yel release];
//    
//    UIView *red = [[UIView alloc]initWithFrame:CGRectMake(50, 50, 100, 100)];
//    red.backgroundColor = [UIColor redColor];
//    [yel addSubview:red];
//    [red release];
    
    
    UIView *red = [[UIView alloc]initWithFrame:CGRectMake(41, 71, 142, 142)];
    red.bounds = CGRectMake(-50, -50, 100, 100);
    red.backgroundColor = [UIColor redColor];
    [contain addSubview:red];
    [red release];
    
    UIView *yel = [[UIView alloc]initWithFrame:CGRectMake(137, 164, 147, 147)];
    yel.bounds = CGRectMake(50, -50, 100, 100);
    yel.backgroundColor = [UIColor yellowColor];
    [contain addSubview:yel];
    [yel release];
    
    UIView *gree  = [[UIView alloc]initWithFrame:CGRectMake(41, 267, 147, 147)];
    gree.bounds  = CGRectMake(-50, -50, 100, 100);
    gree.backgroundColor = [UIColor greenColor];
    [contain addSubview:gree];
    [gree release];
    
    UIView *bul = [[UIView alloc]initWithFrame:CGRectMake(137, 360, 147, 147)];
    bul.backgroundColor = [UIColor blueColor];
    [contain addSubview:bul];
    [bul release];
    //添加子视图
    UIView *gray = [[UIView alloc]initWithFrame:CGRectMake(60, 184, 200, 200)];
    gray.backgroundColor = [UIColor grayColor];
    [contain insertSubview:gray aboveSubview:red];
    //[contain insertSubview:gray belowSubview:yel];
    //[contain insertSubview:gray atIndex:1];
   // [contain addSubview: gray];
    //调节子视图是层级关系
    //将灰色视图放到所有视图之前
    //[contain bringSubviewToFront:gray];
    //将灰色视图放到所有视图之后
    [contain sendSubviewToBack:gray];
    //红色视图和黄色视图交换层级
    [contain exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
    //将灰色视图移除掉
    [gray removeFromSuperview];
    
    [gray release];
    [gray release];
    [gray release];
    [gray release];
    [gray release];
    [gray removeFromSuperview];
    /*
     总结
     1,父视图管理所有的子视图,以数组形式管理
     
     2.添加子视图,以及调整子视图的层级关系,需要父视图管理
     3.移除视图时,自己调用removeFromSuperview 方法
     4.当把子视图添加到父视图 父视图会对子视图做retain,引用计数加一
     5.当子视图从父视图移除时,父视图会对子视图做release操作,引用计数减一
     6.当父视图销毁时会将所有的子视图release,
     
     */
    
    
    
    
    
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
