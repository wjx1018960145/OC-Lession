//
//  AppDelegate.m
//  LessonUIlabel
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
    
    UIView *containView = [[UIView alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
    //clearColor 默认是父视图一样
    containView.backgroundColor = [UIColor yellowColor];
    [self.window addSubview:containView];
    [containView release];
    //UIlabel IOS中的 空间 是UIciew 子类 只是在UIciew 的基础上添加文字功能
    //UIlabel 也是视图 所以使用过程和UIview一样
    
    //1.创建视图对象
    //2配置视图属性
    //3 添加到父视图
    //4 释放所有权
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(20, 100, 280, 30)];
    //1背景颜色
    label.backgroundColor = [UIColor grayColor];
    //显示文本
    label.text = @"frankqweqweqqweqeqeqweqweqeqeqweqeqweqeqweqweqweqqeqweqwewqweqwe";
    //对齐方式
    //label.textAlignment = NSTextAlignmentCenter;
    //字体颜色
    label.textColor = [UIColor blueColor];
    //字体大小
    //label.font = [UIFont systemFontOfSize:20];label.font = [UIFont boldSystemFontOfSize:22];
    //字体样式
    //label.font = [UIFont fontWithName:@"Baskerville" size:20];
    //阴影
//    label.shadowColor = [UIColor redColor];
//    label.shadowOffset = CGSizeMake(-3, -3);
    
    //VIP 标签换行 0代表不限制
    label.numberOfLines = 0;
    //label 根据自身宽度修改字体大小
    //label.adjustsFontSizeToFitWidth = YES;
    //行的截取方式
    label.lineBreakMode = NSLineBreakByTruncatingMiddle;
    
    
    
    
    
    //添加到父视图
    //label.attributedText;
    [containView addSubview:label];
    [label release];
    
    
    
    
    
    
    
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
