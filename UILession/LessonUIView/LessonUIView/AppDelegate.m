//
//  AppDelegate.m
//  LessonUIView
//
//  Created by lanouhn on 14-10-23.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

//当应用程序加载时触发.做一些应用程序内容的工作

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    /**
     *  UiView是所有视图类的基类,提供了视图管理的所有功能,在屏幕上看到多有的内容都是UIView以及UIView的子类
     UIview表示屏幕上的一块巨型区域,想要画出该区域,需要知道1 矩形的大小,2矩形的位置,(矩形左上角的坐标x,y)
     */
    /**
     * 快速创建结构体变量方法
     CGRect ---- CgRectMake
     CGPoint ----  CGPointMake
     CGSize ----  CGSizeMake
     快速将结构体变量转为字符串的方法
      CGRect ------NSStringFromCGRect
     CGPoint -----NSStringFromCGPoint
     CGSize ----  NSStringFromCGSize
     *                          物理尺寸                    实际像素()
     iphone 3Gs 3.5寸/非Retina   320 x 480(x1)               320 x 480
     iphone 4/4s 3.5寸/Retina屏  320 x 480 (x2)             640 x 960
     iphone 5/5s/5c 4寸/Retina屏 320 x 568(x2)                640 x 1136
     iphone 6      4.7寸/Retina屏375 x 667 (x2)               750 x 1334
     iphone 6 plus  5.5寸/Retina display HD 414 x 736(x3)        1242 x 2208  (实际1080x 1920)
     *
     
     */
    //视图使用的步骤
    //创建视图
    UIView *containterView = [[UIView alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
    containterView.backgroundColor = [UIColor whiteColor];
    [self.window addSubview:containterView];
    [containterView release];
    
    UIView *redView = [[UIView alloc]initWithFrame:CGRectMake(200, 100, 200, 100)];
    redView.backgroundColor = [UIColor redColor];
    [containterView addSubview:redView];
    [redView release];
    
    //左上角
    UIView *leftView1 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
     leftView1.backgroundColor = [UIColor redColor];
    [containterView addSubview:leftView1];
     [leftView1 release];
    
    //右上角
    UIView *reghtView2 = [[UIView alloc]initWithFrame:CGRectMake(270, 0, 50, 50)];
    reghtView2.backgroundColor = [UIColor redColor];
    [containterView addSubview:reghtView2];
    [reghtView2 release];
    
    //左下角
    UIView *redView3 = [[UIView alloc]initWithFrame:CGRectMake(0, 518, 50, 50)];
     redView3.backgroundColor = [UIColor redColor];
    [containterView addSubview:redView3];
     [redView3 release];
    //右下角
    UIView *redView4 = [[UIView alloc]initWithFrame:CGRectMake(270, 518, 50, 50)];
     redView4.backgroundColor = [UIColor redColor];
     [containterView addSubview:redView4];
    [redView4 release];
    
    /**
     *  视图的层级关系
     1,B视图添加到A视图,A是父视图
     2,一个视图可以有多个子视图,但是最多只能有一个父视图
     3,后添加的视图会把先添加的视图覆重叠盖掉
     4,子视图始终会在父视图的前面
     uiview 具有的属性
     1.frame frame更改center更改
     2.conter center更改frame更改
     3.hidden  设置视图显隐性,默认为NO
     4.alpha 透明度 取值范围0 --1
     5.tag 标示符.
     6.superview 父视图 
     7.subview -- 所有的子视图
     *
     
     //最终运行结果 B在C上;
     * A  B  C
     [A add B]
     [c add B]
     *
     *
     
     
     
     
     
     */
//    /通过父视图window获取子视图yelview
    
    UIView *yelView = [[UIView alloc]initWithFrame:CGRectMake(60, 184, 200, 200)];
   // yelView.frame = CGRectMake(60, 0, 200, 200);
    //yelView.center = CGPointMake(60, 0);
    //2.配置属性
    yelView.backgroundColor = [UIColor yellowColor];
   // yelView.hidden = YES;
   // yelView.alpha = 1;
    yelView.tag = 100;
   
    
    NSLog(@"Frame=%@",NSStringFromCGRect(yelView.frame));
    NSLog(@"center=%@",NSStringFromCGPoint(yelView.center));
    //3.添加到父视图
    [containterView addSubview:yelView];
    [yelView release];
    
    //origin (视图左上角坐标) 是相当于父视图的坐标原点的位置
    UIView *centerView = [[UIView alloc]initWithFrame:CGRectMake(50, 50, 100, 100)];
    centerView.backgroundColor = [UIColor redColor];
    [yelView addSubview:centerView];
    [centerView release];
     //NSLog(@"%@",yelView.superview);
    NSLog(@"%@",containterView.subviews);
    
    //1 subviews
    UIView *last = [containterView.subviews lastObject];
    
    NSLog(@" last=%@",last);
    //2 tag 父视图根据tag值取子视图
    UIView *view =  [containterView viewWithTag:100];
    NSLog(@" view=%@",view);
    //移除视图
    [containterView removeFromSuperview];

    //4 释放所有权
    self.window.backgroundColor = [UIColor greenColor];
    //当添加到父视图时,会将子视图retain引用计数加一
    //让windos成为可见应用程序带的主窗口,并且显示
    
    //UIwindow 窗口,内容视图的载体,用来呈现应用程序的内容
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (void)dealloc{
    [_window release];
    [super dealloc];
}
@end
