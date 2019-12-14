//
//  RootViewController.m
//  LessionTargetAction
//
//  Created by lanouhn on 14/10/30.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "RootViewController.h"
#import "TouchView.h"
#import "UIColor+Random.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    
    TouchView *touch = [[TouchView alloc]initWithFrame:CGRectMake(10, 40, 300, 100)];
    touch.backgroundColor = [UIColor redColor];
    touch.tag =100;
    //给fist指定响应者
    [touch addTarget:self action:@selector(changTouchViewColor:) controlEvevt:UIControlEventTouchUpInside];
    [self.view addSubview:touch];
    [touch release];
    
    TouchView *secview = [[TouchView alloc]initWithFrame:CGRectMake(10, 200, 300, 100)];
    secview.backgroundColor = [UIColor greenColor];
    [secview addTarget:self action:@selector(changTouchSuperViewColor:) controlEvevt:UIControlEventTouchUpInside];
    secview.tag = 101;
    
    [self.view addSubview:secview];
    [secview release];
    //绿色视图修改父视图颜色
    //改变位置
    
    TouchView *thirview = [[TouchView alloc]initWithFrame:CGRectMake(10, 300, 300, 50)];
    thirview.backgroundColor = [UIColor blueColor];
    [thirview addTarget:self action:@selector(changTouchPosition:) controlEvevt:UIControlEventTouchUpInside];
    thirview.tag = 102;
    [self.view addSubview:thirview];
    [thirview  release];
    //灰色视图 该不安大小
    TouchView *forth = [[TouchView alloc]initWithFrame:CGRectMake(10, 400, 300, 50)];
    forth.backgroundColor = [UIColor grayColor];
    [forth addTarget:self action:@selector(changTouchSize:) controlEvevt:UIControlEventTouchDown];
    forth.tag = 103;
    [self.view addSubview:forth];
    [forth release];
    //
    //橘黄色改变本身 父类 位置 大小
    
    TouchView *orange = [[TouchView alloc]initWithFrame:CGRectMake(10, 480, 300, 68)];
    orange.backgroundColor = [UIColor orangeColor];
    [orange addTarget:self action:@selector(change:) controlEvevt:UIControlEventTouchUpInside];
    
    [self.view addSubview:orange];
    [orange release];
    
    //self.view = touch;
    
    // Do any additional setup after loading the view.
}
- (void)changTouchViewColor:(TouchView *)touch{
    touch.backgroundColor = [UIColor random];
}

- (void)changTouchSuperViewColor:(TouchView *)touch{
    touch.superview.backgroundColor = [UIColor random];
}
- (void)changTouchPosition:(TouchView *)touch{
    touch.center = CGPointMake(arc4random()%200 + 50, arc4random()% 400 + 50);
}

- (void)changTouchSize:(TouchView *)touch{
    touch.bounds = CGRectMake(0, 0, arc4random()%250 + 50, arc4random()% 50 + 50);
    
}
- (void)change:(TouchView *)touch{
    touch.backgroundColor = [UIColor random];
    touch.superview.backgroundColor = [UIColor random];
    touch.center = CGPointMake(arc4random()%200 + 50, arc4random()% 400 + 50);
    touch.bounds = CGRectMake(0, 0, arc4random()%250 + 50, arc4random()% 50 + 50);
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
