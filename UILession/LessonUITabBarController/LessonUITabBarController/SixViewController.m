//
//  SeaxViewController.m
//  LessonUITabBarController
//
//  Created by lanouhn on 14/11/13.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "SixViewController.h"

@interface SixViewController ()

@end

@implementation SixViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    NSLog(@"6");
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    if ([self isViewLoaded]&&[self.view window]) {
        self.view = nil;
    }

}
- (void)dealloc {
    NSLog(@"回收空间");
    [super dealloc];
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
