//
//  SecondViewController.m
//  LessonCusteomnavigationBar
//
//  Created by lanouhn on 14/11/6.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *btu = [UIButton buttonWithType:UIButtonTypeSystem];
    btu.frame = CGRectMake(20, 180, 200, 30);
    btu.layer.cornerRadius = 5;
    [btu setTitle:@"返回" forState:UIControlStateNormal];
    [btu addTarget:self action:@selector(pop:) forControlEvents:UIControlEventTouchUpInside];
    
    btu.backgroundColor = [UIColor greenColor];
    [self.view addSubview:btu];
    [self customnavgitainBarContent];
    
    

    
}
- (void)customnavgitainBarContent {
    
    self.navigationItem.title = @"详情";
    
}


- (void)pop:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    if ([self isViewLoaded] && [self.view window]) {
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
