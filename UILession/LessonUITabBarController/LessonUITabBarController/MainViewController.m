//
//  MainViewController.m
//  LessonUITabBarController
//
//  Created by lanouhn on 14/11/13.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "MainViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThiredViewController.h"
#import "FourtViewController.h"
#import "FirvViewController.h"
#import "SixViewController.h"
@interface MainViewController ()

@end

@implementation MainViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self congiguerViewController];
}

//配置标签视图控制器管理的视图控制器
- (void)congiguerViewController {
    /**
     *  UItabBarController 是ios中提供的多视图控制器,用来管理对个视图的控制器,但是它管理的视图之间并列关系,同时存在
     
     */
    FirstViewController *fir = [[FirstViewController alloc] init];
    fir.tabBarItem.title = @"消息";
    fir.tabBarItem.image = [UIImage imageNamed:@"tabbar_mainframe"];
    //角标
    //选中后的标签
    //fir.tabBarItem.selectedImage = [UIImage imageNamed:@"tabbar_badge"];
    //设置每个标签的tag值
    fir.tabBarItem.tag = 120;
    
    fir.tabBarItem.badgeValue = @"30";
    SecondViewController *sec = [[SecondViewController alloc] init];
    sec.tabBarItem.title = @"通讯录";
    sec.tabBarItem.badgeValue = @"10";
    sec.tabBarItem.tag = 121;
    sec.tabBarItem.image = [UIImage imageNamed:@"tabbar_contacts"];
    ThiredViewController *thi = [[ThiredViewController alloc] init];
    thi.tabBarItem.title = @"动态";
    thi.tabBarItem.badgeValue = @"new";
    thi.tabBarItem.tag = 122;
    thi.tabBarItem.image = [UIImage imageNamed:@"tabbar_discover"];
    FourtViewController *fou = [[FourtViewController alloc] init];
    fou.tabBarItem.title = @"我的";
    fou.tabBarItem.image = [UIImage imageNamed:@"tabbar_me"];
    fou.tabBarItem.tag = 123;
    FirvViewController *firv = [[FirvViewController alloc] init];
    firv.tabBarItem.title = @"热点";
    SixViewController *six = [[SixViewController alloc] init];
    six.tabBarItem.title = @"频道";
    //创建标签控制器
    
        //设置标签视图控制器管理视图控制器
    NSArray *viewController = @[fir,sec,thi,fou,firv,six];
    self.viewControllers = viewController;
    //3设置标签懒得渲染颜色
    self.tabBar.tintColor = [UIColor greenColor];
    //2设置标签栏的颜色
    //tabbar.tabBar.barTintColor = [UIColor magentaColor];
    //4设置标签栏的背景图片
    //tabbar.tabBar.backgroundImage = [UIImage imageNamed:@"320x49"];
    
    //5设置代理
    //tabbar.delegate = self;
    //6设置默认选中的标签
    //    tabbar.selectedIndex = 2;
    //tabbar.selectedViewController = sec;
    
    //将标签视图控制器指定为window的根视图控制器
    //self.window.rootViewController = tabbar;
    
    

    
    [fir release];
    [sec release];
    [thi release];
    [fou release];
    [firv release];
    [six release];
    
    
    }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    if ([self isViewLoaded]&&[self.view window]) {
        self.view = nil;
    }

    // Dispose of any resources that can be recreated.
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
