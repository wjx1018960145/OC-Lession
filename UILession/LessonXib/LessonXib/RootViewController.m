//
//  RootViewController.m
//  LessonXib
//
//  Created by lanouhn on 14/12/15.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()
@property (weak, nonatomic) IBOutlet UIView *redview;


@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)clickAction:(id)sender {
    NSLog(@"click");
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
