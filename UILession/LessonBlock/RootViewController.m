//
//  RootViewController.m
//  LessonBlock
//
//  Created by lanouhn on 14/12/9.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "RootViewController.h"
#import "SecondViewController.h"
@interface RootViewController ()<secondDelagate>

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"skip" style:UIBarButtonItemStyleDone target:self action:@selector(hand:)];
}
- (void)hand:(UIBarButtonItem *)item{
    
}
- (void)getColor:(UIColor *)color{
    SecondViewController *second = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:second animated:YES];
    [second getBlockFormOut:^(UIColor *color) {
        NSLog(@"12313123");
    }];
    [second release];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
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
