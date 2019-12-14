//
//  AppDelegate.m
//  Lesson4AppllictionSequence
//
//  Created by lanouhn on 14/10/27.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate



//应用程序加载时触发 创建window 以及让window可见,通过window呈现给用户可视化假面
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSLog(@"%s,%d",__FUNCTION__,__LINE__);
    //测试一个方法是否调用以及实际
    //__FUNCTION__
    //_LINE__ 打印方法所在行数
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
   
    
    
    
    
    self.window.backgroundColor = [UIColor whiteColor];
    //
    [self.window makeKeyAndVisible];
    
    return YES;
}

// 当应用程序将要取消活跃状态的触发 暂停正在运行的任务,让timer无效.

- (void)applicationWillResignActive:(UIApplication *)application {
   NSLog(@"%s,%d",__FUNCTION__,__LINE__);
    
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}
//当应用程序进入后台触发,用来释放资源,存储用户数据,使timer无效,存储应用程序状态信息以便于中断后的恢复
- (void)applicationDidEnterBackground:(UIApplication *)application {
   NSLog(@"%s,%d",__FUNCTION__,__LINE__);
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}
// 当应用程序将要进入前台时触发,重新启动进入后台时被暂停掉的程序
- (void)applicationWillEnterForeground:(UIApplication *)application {
    NSLog(@"%s,%d",__FUNCTION__,__LINE__);
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}
// 当应用程序已经成为活跃状态(当前程序正在运行)重启已经被暂停的任务,或者从新刷新界面
- (void)applicationDidBecomeActive:(UIApplication *)application {
     NSLog(@"%s,%d",__FUNCTION__,__LINE__);
    
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
     NSLog(@"%s,%d",__FUNCTION__,__LINE__);
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}
//当电话进入时
//ioS 8
//1,applicationWillResingnAction:
//2.applictionDidBecomeAction:
//3
//4

- (void)dealloc{
    [_window release];
    [super dealloc];
}
@end
