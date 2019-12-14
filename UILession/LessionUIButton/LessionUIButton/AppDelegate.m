//
//  AppDelegate.m
//  LessionUIButton
//
//  Created by lanouhn on 14/10/25.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    /*
     UIbutten 是IOS中用来响应用户点击的控件,既可以显示文字,也可以显示图片,也可以处理用户的交互,创建和UIlabel UItextfield类似
     UIbutten 是UIcontrol的子类
     
     1.创建视图对象
     2.配置对象属性
     3.添加到父视图
    
     
     */
    UIView *uiview = [[UIView alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
    uiview.backgroundColor = [UIColor whiteColor];
    [self.window addSubview:uiview];
    [uiview release];
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    //背景颜色
    //button.backgroundColor = [UIColor yellowColor];
    //位置
    button.frame = CGRectMake(20, 100, 220, 55);
   // [button setTitle:@"登录" forState:<#(UIControlState)#>]
    //(2)添加处理事件
    //当button接收到用户点击之后 交给target来执行action方法 响应点击事件
    //self 代表当前类对象
    //target 目标 处理事件对象
    //action 事件 方法(实现代码)
    //controEvent 触发时机
    //方法 aa 有且只有一个参数,切参数类型和
    //self代表当前类的对象,
    //显示文字
    [button addTarget:self action:@selector(aa:) forControlEvents:UIControlEventTouchDragInside];
    //添加到
    [button setTitle:@"登录" forState:UIControlStateNormal];
    //设置图片
    
    [button setImage:[UIImage imageNamed:@"login_btn_normal.png"] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"login_btn_press.png"] forState:UIControlStateHighlighted];
    [uiview addSubview:button];
    
    
    
    
    
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)aa:(UIButton *)buttons{
    
    
    NSLog(@"超群被打了");
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
