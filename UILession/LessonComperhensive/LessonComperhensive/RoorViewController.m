//
//  RoorViewController.m
//  LessonComperhensive
//
//  Created by lanouhn on 14/10/31.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "RoorViewController.h"
#import "LTView.h"
#import "LoginView.h"
#import "Register.h"
@interface RoorViewController ()

@end

@implementation RoorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor whiteColor];
//#warning   
  
//    LoginView *loview = [[LoginView alloc]initWithFrame:CGRectMake(0, 60, 320, 508)];
//    [self.view addSubview:loview];
//    [loview release];
    
    Register *loregister = [[Register alloc]initWithFrame:CGRectMake(0, 60, 320, 508)];
    [self.view addSubview:loregister];
    [loregister release];
    
    
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
