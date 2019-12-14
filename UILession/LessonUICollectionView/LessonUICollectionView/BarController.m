//
//  BarController.m
//  LessonUICollectionView
//
//  Created by lanouhn on 14/11/25.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "BarController.h"

@interface BarController ()

@end

@implementation BarController

- (void)viewDidLoad {
    [super viewDidLoad];
    RootViewController *root = [[RootViewController alloc] init];
    root.navigationItem.title = @"首页";
    root.tabBarItem.title = @"首页";
    self.viewControllers = @[root];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
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
