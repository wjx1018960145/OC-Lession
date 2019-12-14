//
//  AppDelegate.m
//  LessonControllerComperhensive
//
//  Created by lanouhn on 14/11/13.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "AppDelegate.h"
#import "MainTabBarController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate

-(void)dealloc{
    self.window = nil;
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    /**
     使用教程: 先导入响应的头文件再修改
     */
    //快速创建根视图控制器
    
    
    MainTabBarController *rootController = [[MainTabBarController alloc]init];
    //创建导航控制器并且将导航控制器添加为跟根视图
    UINavigationController *uinavigationContrller=[[UINavigationController alloc]initWithRootViewController:rootController];
    //指定为根视图控制器
    self.window.rootViewController = uinavigationContrller;
    
    //释放所有权
    [rootController release];
    [uinavigationContrller release];
    [_window release];
    

   
    //[tabVC release];
    
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

@end
