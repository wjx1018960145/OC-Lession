//
//  SecondViewController.m
//  LessonBlock
//
//  Created by lanouhn on 14/12/9.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (void)viewDidDisappear:(BOOL)animated {
    UIColor *color = [UIColor colorWithRed:arc4random() %256 / 255.0 green:256 / 255.0 blue:256 / 255.0 alpha:1.0];
        //调用代理对象
                      if([self.delagate respondsToSelector:@selector(getColor:)]){
                          [self.delagate getColor:color];
                      }
    
    if (self.color) {
        self.color(color);
    }
}
- (void)getBlockFormOut:(getCustomColor)customcolor {
    self.color = customcolor;
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
