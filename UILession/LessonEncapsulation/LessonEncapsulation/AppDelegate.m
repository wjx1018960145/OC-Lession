//
//  AppDelegate.m
//  LessonEncapsulation
//
//  Created by lanouhn on 14/10/27.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "AppDelegate.h"
#import "LTView.h"
@interface AppDelegate ()

@end

@implementation AppDelegate



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    UIView *contor = [[UIView alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
    contor.backgroundColor = [UIColor whiteColor];
    [self.window addSubview:contor];
    [contor release];
    NSInteger y = 30;
    NSArray *arr = @[@"用户名:",@"密码:",@"确认密码:",@"手机号:",@"邮箱:"];
    NSArray *placehoders = @[@"请输入用户名",@"请输入密码",@"请确认密码",@"请输入手机号",@"请输入邮箱"];
    for (int i = 0; i < 5; i++) {
        LTView *ltview = [[LTView alloc] initWithFrame:CGRectMake(20, y, 280, 30)];
        //给LTview 显示文字
        [ltview setDescriptionText:arr[i]];
        //给lyview设置提示文字
        [ltview setTextField:placehoders[i]];
        //获取textfield的值
        [ltview getText];
        [ltview setTextFieldDelegate:self];
        [contor addSubview:ltview];
        [ltview release];
       
        //设置密码模式
        if(1 == i || 2 ==i){
            [ltview setScureEnty:YES];
        }
        //设置LTview 键盘类型
        if (3 == i) {
            [ltview setKeyBoardType:UIKeyboardTypeNumberPad];
        }
        
        
        
//        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(20, y+5, 80, 30)];
//        label.text = arr[i];
//        [contor addSubview:label];
//        [label release];
//        
//        UITextField *textField = [[UITextField alloc]initWithFrame:CGRectMake(120, y+5, 160, 30)];
//        textField.text = placehoders[i];
//        textField.borderStyle =UITextBorderStyleRoundedRect;
//        [contor addSubview:textField];
//        [textField release];
//        
//        //处理密码模式
//        if (1 == i || 2 == i) {
//            textField.secureTextEntry = YES;
//        }
//        //手机号显示数字键盘
//        if(i == 3){
//            textField.keyboardType = UIKeyboardTypeNumberPad;
        
        
        //}
        
        y+=50;
        
    }
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
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
