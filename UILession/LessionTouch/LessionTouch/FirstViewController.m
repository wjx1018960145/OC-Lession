//
//  FirstViewController.m
//  LessionTouch
//
//  Created by lanouhn on 14/10/29.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "FirstViewController.h"
#import "TonchView.h"
#import "PanView.h"
@interface FirstViewController ()

@end

@implementation FirstViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
//    TonchView *first = [[TonchView alloc]initWithFrame:CGRectMake(60, 184, 200, 200)];
//    first.backgroundColor = [UIColor orangeColor];
//    [self.view addSubview:first];
//    [first release];

    PanView *pan = [[PanView alloc]initWithFrame:CGRectMake(60, 184, 200, 200)];
    pan.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:pan];
    [pan release];
    // Do any additional setup after loading the view.
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
