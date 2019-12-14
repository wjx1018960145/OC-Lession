//
//  FirstViewController.m
//  LessonUITabBarController
//
//  Created by lanouhn on 14/11/13.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    //获取当前管理视图控制器的(距离最近的)导航将控制器
    NSLog(@"%@",self.navigationController);
    //获取当前管理该视图控制器的标签控制器
    NSLog(@"%@",self.tabBarController);
    //如果想在该类中操作导航条
//    self.navigationController.navigationBar
    //想针对于该类自定义导航条内容
//    self.navigationItem
    //如果想在该类中修改标签栏
//    self.tabBarController.tabBar
    //如果想针对于该类自定义标签栏内容
//    self.tabBarItem.title
    
    NSLog(@"firstVC");
    // Do any additional setup after loading the view.
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
