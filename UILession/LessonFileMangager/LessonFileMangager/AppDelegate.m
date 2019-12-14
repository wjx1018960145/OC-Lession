//
//  AppDelegate.m
//  LessonFileMangager
//
//  Created by lanouhn on 14/11/14.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    /**
     沙盒本质是一个文件夹 (是一个封闭的文件夹)
     而且文件夹的名字是随机的 而且每一个应用程序都会生成一个沙盒文件夹
     之所以是封闭的因为名字是随机的不能获得准确的文件夹路径
     //1获取沙盒文件夹路径 沙盒存储每个用户的信息 (资源)
     //2获取应用程序包的路径,包中包含有应用程序加载所需要的多有资源,上传时也是上传该包,所以对所有用户来说都一样的,但是包中资源可访问,不可修改
     */
    // Override point for customization after application launch.
    NSString *homepath =NSHomeDirectory();
    NSLog(@"%@",homepath);
    
    NSString *bund = [[NSBundle mainBundle] bundlePath];
    NSLog(@"%@",bund);
    //沙盒中的文文件夹以及存储的数据形性质
    //1.Documents:用来存储长久存储的数据
    //2.Library
     //2.1Caches:存储缓存文件.图片(images) 视频(Videos),音频(Audiose),小说gjjkjhkjhjjhgghjkhjh
     //2.2Prefrences :存储应用程序的偏好设置,比如:应用程序是否第一次启动,用户之前是否已经登录
    //3.tmp:存储临时文件 比如下载的临时包
    NSUserDefaults *userdefou = [NSUserDefaults standardUserDefaults];
    [userdefou setBool:NO forKey:@"FirstWang"];
    [userdefou synchronize];
    //快速创建根视图控制器
    FirstController *rootController = [[FirstController alloc]init];
    //创建导航控制器并且将导航控制器添加为跟根视图
    UINavigationController *uinavigationContrller=[[UINavigationController alloc]initWithRootViewController:rootController];
    //指定为根视图控制器
    self.window.rootViewController = uinavigationContrller;
    
    //释放所有权
    [rootController release];
    [uinavigationContrller release];
    [_window release];
    

    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}
- (void)dealloc{
    self.window =nil;
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
