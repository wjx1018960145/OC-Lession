//
//  RootViewController.m
//  LessionResponderChain
//
//  Created by lanouhn on 14/10/29.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "RootViewController.h"
#import "ResponderView.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ResponderView *red = [[ResponderView alloc]initWithFrame:CGRectMake(0, 0, 320, 284)];
    red.backgroundColor = [UIColor redColor];
    red.tag = 100;
    [self.view addSubview:red];
    [red release];
    //uiimageview 和UIlabel用户交互默认是关闭的,如果在该视图上添加子视图,并且相对触摸事件做出相应,必须打开用户交互.
    
    UIImageView *yel = [[UIImageView alloc]initWithFrame:CGRectMake(0, 282, 320, 284)];
    yel.backgroundColor = [UIColor yellowColor];
    yel.tag  = 101;
    [self.view addSubview:yel];
    [yel release];
    
    ResponderView *gree = [[ResponderView alloc]initWithFrame:CGRectMake(30, 30, 260, 224)];
    gree.backgroundColor = [UIColor greenColor];
    //yel.userInteractionEnabled = NO;
    gree.tag = 102;
    [yel addSubview:gree];
    [gree release];
    
    UIView *bul = [[UIView alloc]initWithFrame:CGRectMake(30, 30, 200, 164)];
    bul.backgroundColor = [UIColor blueColor];
    bul.tag = 103;
    [gree addSubview:bul];
    [bul release];
    
    // Do any additional setup after loading the view.
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    NSLog(@"视图控制器处理");
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
