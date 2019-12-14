//
//  AppDelegate.m
//  LessonThread
//
//  Created by lanouhn on 14/11/24.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

{
    NSInteger _totalTickets;//储存剩余票数
    NSLock *_lock;//存储枷锁对象
}
- (void)forfor:(NSString *)name {
    //子线程中没有自动释放池
     NSLog(@"wang text1=%@  isMainThread=%d",[NSThread currentThread],[[NSThread currentThread] isMainThread]);
//    for (int i = 0; i < 10; i++) {
//        NSLog(@"%d",i);
//    }
    //定时器在主线程中能够响应对应的方法,但是在子线程中不能
    //原因:主线程在uiapplaictionMain 开启了事件循环,能够及时捕获操作,及时出里,但是在子线程并没有开启事件循环.
    @autoreleasepool {//添加autoreleasepool因为子线程中一直alloc 没有release
        [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(aa:) userInfo:nil repeats:YES];
        //获取当前线程中的事件循环.
        NSRunLoop *run = [NSRunLoop currentRunLoop];
        [run run];//开启循环
    }
}
- (void)aa:(NSTimer *)time{
    
    NSLog(@"wang test");
}

- (void)test2 {
     NSLog(@"wang test2=%@  isMainThread=%d",[NSThread currentThread],[[NSThread currentThread] isMainThread]);
    for (int i = 0; i < 5; i++) {
        NSLog(@"Duke is Duck");
    }
}
- (void)sellTicket:(NSString *)name {
    /**
     *  线程互斥:当多个线程访问同一块资源时,为了保证线程安全,一个线程在访问时其他线程处于等待状态.
        线程死锁:当线程访问一个资源时 如果该资源已经被其他线程正在访问(已经枷锁) 如果想使用该资源,必须等待其他线程解锁完毕,如果不解锁线程处于等待状态
     
     */
   
    @autoreleasepool {
        
        while (YES) {
             [_lock lock];//枷锁
            if (_totalTickets > 0) {
                _totalTickets --;
                NSLog(@"%@剩余票数%ld",name,(long)_totalTickets);
            }else {
                NSLog(@"%@票已卖完",name);
                break;
            }
             //[_lock unlock];
        }
       
        
    }
    
}
/**
 *  网络中的同步连接和异步连接:
    属于连接方式,请求线程不同:同步连接网络请求是有主线程处理,而异步连接是有子线程处理.
    线程同步和线程并发:属于多线程之间的关系,线程同步:各线程执行的任务之间存在依赖关系,后一个线程的执行必须依赖于前一个线程任务结束
    线程并发:线程同时执行任务,线程执行的任务之间没有依赖关系,可能后执行任务先完成任务,主线程和子线程都可以线程同步,但是只有子线程能够实现并发.
 
 */
- (void)downloadImage {
    //
    NSLog(@"wang test2=%@  isMainThread=%d",[NSThread currentThread],[[NSThread currentThread] isMainThread]);
    UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://image.zcool.com.cn/56/13/1308200901454.jpg"]]];
    //刷新ui界面的任务交给主线程去做
    //从子线程跳到主线程中
    [self performSelectorOnMainThread:@selector(loadIamge:) withObject:image waitUntilDone:YES];
    
    
}
- (void)loadIamge:(UIImage *)image {
    NSLog(@"wang test2=%@  isMainThread=%d",[NSThread currentThread],[[NSThread currentThread] isMainThread]);
    UIImageView *view = (UIImageView *)[self.window viewWithTag:100];
    view.image = image;
}
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    _totalTickets = 30;//初值
    _lock = [[NSLock alloc] init];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
        // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor redColor];
    [self.window makeKeyAndVisible];
    [_window release];
    
    //主线程中
    
    //创建子线程 完成forfor操作
    //子线程完成耗时操作
    //主线程完成显示操作
    //1创建子线程方式,使用nsthread创建
//    [NSThread detachNewThreadSelector:@selector(forfor) toTarget:self withObject:nil];
    //2创建子线程方式2 使用nsthread添加线程任务
//    NSThread *therad = [[NSThread alloc] initWithTarget:self selector:@selector(forfor) object:nil];
//    
//    [therad start];//执行任务开始子线程
    
    //3创建子线程方式,将任务添加到nsoperatQueue(任务队列中,先进先出),由队列针对于所有的任务合理的分配线程
//    NSInvocationOperation *operation = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(forfor) object:nil];
//    NSInvocationOperation *operation1 = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(test2) object:nil];
    //添加到任务队列中
    //队列我每一个任务分配了一个子线程,因为队列是先进先出,所以分配任务时有先后顺序,但是所有都是同时进行先出(线程并发)
    //线程同步:线程之间存在依赖关系,后一个线程的执行必须依赖前一个任务结束
    //线程并发:线程之间不存在依赖关系 ,后一个线程的执行不依赖前一个任务结束
    //任务队列创建线程数量 有系统性能决定,但是能够保证所有任务均在子线程中运行
//    NSOperationQueue *aueue  =[[NSOperationQueue alloc] init];
//    [aueue setMaxConcurrentOperationCount:1];//设置最大并发数
//    //添加任务之间的任务关系
//   // [operation1 addDependency:operation];
//    [aueue addOperation:operation];
//    [aueue addOperation:operation1];
//    [operation1 release];
//    [operation release];
//    [aueue release];

    //s使用nsobject分类中提供了创建子线程的方法
//    [self performSelectorInBackground:@selector(forfor:) withObject:@"aa"];
    
    //模拟售票
//    [NSThread detachNewThreadSelector:@selector(sellTicket:) toTarget:self withObject:@"王"];
//    [NSThread detachNewThreadSelector:@selector(sellTicket:) toTarget:self withObject:@"朱"];
    //ImageViewer
    UIImageView *imageview = [[UIImageView alloc] initWithFrame:self.window.frame];
    imageview.backgroundColor = [UIColor greenColor];
    imageview.tag = 100;
    [self.window addSubview:imageview];
    
    //类似于网络请求等耗时操作,交给子线程处理
    [self performSelectorInBackground:@selector(downloadImage) withObject:nil];
    
    
    
    return YES;
}
- (void)dealloc {
    self.window = nil;
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
