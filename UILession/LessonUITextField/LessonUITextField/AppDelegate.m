//
//  AppDelegate.m
//  LessonUITextField
//
//  Created by lanouhn on 14/10/24.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "AppDelegate.h"

///实例变量 和全局变量的区别
//1定义的位置 全局变量 定义在方法外部 实例变量定义在接口文件中或者延展的大括号中
//2生命周期 全局变量:和应用程序的生命周期相同,,,实例变量:生命周期依托对象,有对象 有空间,生命周期开始,对象销毁,生命周期结束.
//3可见度 全局变量 全局可见


@interface AppDelegate ()

{
    UITextField *_textfield;
}

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    /*
     UITextField 是IOS中用来输入文字的空件 比UIlabel 多了文字编辑的功能
     是UIContionter的子类
     1创建视图对象
     2设置属性
     3添加到父类视图
     4释放所有权
     
     */
    UIView *contion = [[UIView alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
    contion.backgroundColor = [UIColor whiteColor];
    [self.window addSubview:contion];
    contion.tag = 200;
    [contion release];
    
     _textfield = [[UITextField alloc]initWithFrame:CGRectMake(60, 148, 200, 40)];
    UIView *view = [[UIView alloc]init];
    _textfield.backgroundColor = [UIColor greenColor];
    _textfield.borderStyle = UITextBorderStyleRoundedRect;
    //设置默认显示文字(当输入框内没有时)
    _textfield.placeholder = @"请输入30-29字符户名";
    //设置输入字体
    //textfield.font = [UIFont systemFontSize25];
    //显示文字
   // textfield.text = @"显示文字";
    //文字颜色 对齐方式
    _textfield.textColor = [UIColor blackColor];
    _textfield.textAlignment = NSTextAlignmentCenter;
    //是否是密码模式
    _textfield.secureTextEntry = YES;
    //键盘类型
   // textfield.keyboardType = UIKeyboardTypeNumberPad;
    //是否允许编辑
   // textfield.enabled = NO;
    //切换return按钮
    _textfield.returnKeyType = UIReturnKeyGo;
    //开始编辑时清除输入框内容
    _textfield.clearsOnBeginEditing = YES;
    //设置清除的样式
    _textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
    //自定义弹出键盘
   // UIView *uiview = [[UIView alloc]initWithFrame:CGRectMake(0,0, 320, 300)];
   // uiview.backgroundColor = [UIColor redColor];
   // textfield.inputView = uiview;
    //[uiview release];
    //代理
    _textfield.delegate = self;
    _textfield.tag = 100;
    [contion addSubview:_textfield];
    
    
    UITextField *text = [[UITextField alloc]init];
    text.delegate = self;
    [_textfield release];
    
    
    
    


    
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //使用window获取
    //1获取window的countainciew
    //2通过containview 获取textfield
    //UIView *uiview = [_window viewWithTag:200];
    //2.
   // UITextField *textf = (UITextField *)[uiview viewWithTag:100];
    
      [_textfield resignFirstResponder];
      NSLog(@"touchesBegan%s",__FUNCTION__);
    
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

//UItextFielddelegate 协议中的方法
//是否允许开始编辑 是否可以获得焦点

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    
    NSLog(@"textFieldShouldBeginEditing=%s",__FUNCTION__);
    return YES;
}
//输入框开始编辑时调用 此时已经获得焦点
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    NSLog(@"textFieldDidBeginEditing=%s",__FUNCTION__);
}
//是否结束编辑,
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    NSLog(@"textFieldShouldEndEditing=%s",__FUNCTION__);
    return YES;
}
//输入框结束编辑
- (void)textFieldDidEndEditing:(UITextField *)textField
{
    NSLog(@"textFieldDidEndEditing=%s",__FUNCTION__);
}
//当输入框文字变化时触发
//想及时获取输入框内容的时候
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if ([string length]==0) {
        return YES;
    }
    char num = [string characterAtIndex:0];
    
    if ('0'<=num&&num<='9') {
        NSLog(@"输入成功");
        
    }else{
        NSLog(@"输入失败");
    }
    NSLog(@"%@ %@",string,textField.text);
    NSLog(@"textField=%s",__FUNCTION__);
    return YES;
}
//询问是否可以清除输入框内容
- (BOOL)textFieldShouldClear:(UITextField *)textField
{
    NSLog(@"textFieldShouldClear=%s",__FUNCTION__);
    return NO;
}
//当点击return按钮触发
//点击retain时意味着回收键盘
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    //回收键盘
    [textField resignFirstResponder];
    NSLog(@"textFieldShouldReturn=%s",__FUNCTION__);
    return YES;
}

@end
