//
//  ThirdViewController.m
//  LessonUInavigationConllerPassValue
//
//  Created by lanouhn on 14/11/5.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "ThirdViewController.h"
#import "Singteton.h"
@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    UILabel * Label = [[UILabel alloc] initWithFrame:CGRectMake(40 , 100, 200, 30)];
    Label.text = [Singteton sharedSingteton].secondtext;
   // Label.text  = @"显示第一页面内容";
    Label.textAlignment = NSTextAlignmentCenter;
    Label.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:Label];
    [Label release];
    UIButton  *btu = [UIButton buttonWithType:UIButtonTypeSystem];
    btu.frame = CGRectMake(40, 280, 200, 30);
    btu.layer.cornerRadius = 5;
    [btu setTitle:@"返回" forState:UIControlStateNormal];
    [btu addTarget:self action:@selector(pop:) forControlEvents:UIControlEventTouchUpInside];
    
    btu.backgroundColor = [UIColor greenColor];
    [self.view addSubview:btu];

    // Do any additional setup after loading the view.
}
- (void)pop:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
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
