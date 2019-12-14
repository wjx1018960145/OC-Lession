//
//  AppDelegate.m
//  LessonUINavgationController
//
//  Created by lanouhn on 14/11/5.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    
    
    
    /**
     *  UINavgateionCOntroller 是ios中的多视图控制器,用来管理多个视图控制器,本身也是视图控制器,也只带一个视图,根视图上方携带有navigationBar(导航条)
     
     */
    
    //创建导航控制器的对象
    FirstViewController *firstvc = [[FirstViewController alloc]init];
    //至少要让导航控制器对象管理一个单视图控制器,指定导航控制器的根视图
    UINavigationController *uinavtion=[[UINavigationController alloc]initWithRootViewController:firstvc] ;//根视图控制器不能使uitabBarController的实例
    UINavigationBar *navtinbar = [[UINavigationBar alloc]init];
   
    
    //将导航控制器指定为window的根视图
    self.window.rootViewController = uinavtion;
    [navtinbar release];
    [firstvc release];
    [uinavtion release];
    
    
    
    [_window release];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
    
   

   }
- (void)dealloc{
    [_window release];
    [super dealloc];
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
