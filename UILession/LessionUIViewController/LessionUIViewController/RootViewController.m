//
//  RootViewController.m
//  LessionUIViewController
//
//  Created by lanouhn on 14/10/28.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "RootViewController.h"
#import "LoginView.h"
@interface RootViewController ()<UITextFieldDelegate>


@end

@implementation RootViewController

//指定初始化方法,不管你使用哪个初始化方法 该方法都会被调用,

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        NSLog(@"%s,%d",__FUNCTION__,__LINE__);
    }
    return self;
}
//当重写从父类继承过来的方法时 , 如果不知道父类对该方法的实现,从写时要调用super.
//loadView方法作业是为视图控制器,创建视图
//当访问控制器的View,如果为空,就调用loadView方法创建视图控制器的View.
//如果想自定义视图控制器View,需要重写loadView方法,创建视图对象,并指定为视图控制器的View
- (void)loadView{
    //1创建视图对象
    LoginView *loginview = [[LoginView alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
   /// NSLog(@"%s,%d",__FUNCTION__,__LINE__);
    //2添加属性
    //1给loginbutton添加点击事件
    [loginview.loginBtu addTarget:self action:@selector(login:) forControlEvents:UIControlEventTouchUpInside];
    //test
    UIView *view1 = [[UIView alloc]init];
    view1.backgroundColor = [UIColor yellowColor];
    view1.tag = 100;
    [loginview addSubview:view1];
    
    //2给textfield 设置会收键盘
    loginview.textfield.delegate = self;
    //3指定视图控制器的View
    self.view = loginview;
    
    [loginview release];
    //[self.view addSubview:loginview];
    //[super loadView];
    
}
//视图控制器View 布局子视图
- (void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    UIView *test = [self.view viewWithTag:100];
    //NSLog(@"%@",self.view.window);
    NSLog(@"第二%@",test.window);
    
}
//视图控制器 不是视图 ,视图控制器自身携带一个视图,而且视图大小和默认屏幕大小一样.
//当视图控制器的View加载完后触发,loadView方法调用完毕后该方法触发

- (void)viewDidLoad {
     [super viewDidLoad];
   // NSLog(@"%s %d",__FUNCTION__,__LINE__);
    //self.view.backgroundColor=  [UIColor whiteColor];
    
   // NSLog(@"%@",self.view.window);
   
    // Do any additional setup after loading the view.
}


//当收到内存警告时触发,当内存不足时,)
//释放掉当前不适用的内存,释放掉可重建的对象.
- (void)didReceiveMemoryWarning {
  
    [super didReceiveMemoryWarning];
    //卸载掉视图控制气得View,回收View所有的子视图
    //1.判断视图控制器的View是否加载,
    //2.判断视图控制器的View是否在当前屏幕展示
//     NSLog(@"%@",self.view.window);
//    NSLog(@"%@",self.view.window);
    if ([self isViewLoaded] == YES && !self.view.window) {
        //安全卸载视图控制器View
        self.view = nil;
        
    }

    
    
    
    // Dispose of any resources that can be recreated.
}
//点击button回收键盘
- (void)login:(UIButton *)sender {
    
    LoginView *loginview = (LoginView *)sender.superview;
    
    [loginview.textfield  resignFirstResponder];
    
    NSLog(@"点我点我");
    
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    LoginView *login = (LoginView *)self.view;
    [login.textfield resignFirstResponder];
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    //textField是参数
    [textField resignFirstResponder];
    return  YES;
}

//检测屏幕旋转
//1设置当前视图控制器是否支持旋转
- (BOOL)shouldAutorotate {
    
    return  YES;
}
//设置旋转方向

- (NSUInteger)supportedInterfaceOrientations {
    return  UIInterfaceOrientationMaskAll;
}
//当向视图控制器支持的方向旋转时触发
//3视图控制器将要旋转是,暂停掉音乐播放,关闭用户交互
- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    NSLog(@"%s %d",__FUNCTION__,__LINE__);
}
//4视图控制器已经旋转完毕,继续音乐播放 打开用户交互
- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation{
     NSLog(@"%s %d",__FUNCTION__,__LINE__);
}
//5 旋转时将要动画时触发,可以添加自定义的动画
- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
     NSLog(@"%s %d",__FUNCTION__,__LINE__);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
