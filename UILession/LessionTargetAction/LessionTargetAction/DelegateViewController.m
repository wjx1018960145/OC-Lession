//
//  DelegateViewController.m
//  LessionTargetAction
//
//  Created by lanouhn on 14/10/30.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "DelegateViewController.h"
#import "ActionView.h"
#import "UIColor+Random.h"
//服从协议
@interface DelegateViewController () <ActionViewDelegate>

@end

@implementation DelegateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    
    ActionView *red = [[ActionView alloc]initWithFrame:CGRectMake(10, 40, 300, 100)];
    red.backgroundColor = [UIColor redColor];
    [self.view addSubview:red];
    red.tag = 100;
    //设置代理对象
    red.delegate = self;
    
    [red release];
    
    ActionView *gree = [[ActionView alloc] initWithFrame:CGRectMake(10, 170, 300, 100)];
    gree.backgroundColor = [UIColor greenColor];
    gree.tag = 101;
    gree.delegate = self;
    [self.view addSubview:gree];
    [gree release];
    //改变位置
    ActionView *bul = [[ActionView alloc] initWithFrame:CGRectMake(10, 300, 300, 100)];
    bul.backgroundColor = [UIColor blueColor];
    bul.tag = 102;
    bul.delegate = self;
    [self.view addSubview:bul];
    [bul release];
    //改变大小
    ActionView *gry = [[ActionView alloc] initWithFrame:CGRectMake(10, 420, 300, 40)];
    gry.backgroundColor = [UIColor grayColor];
    gry.tag = 103;
    gry.delegate = self;
    [self.view addSubview:gry];
    [gry release];
    
    ActionView *yel = [[ActionView alloc] initWithFrame:CGRectMake(10, 520, 300, 40)];
    yel.backgroundColor = [UIColor whiteColor];
    yel.tag = 104;
    yel.delegate = self;
    [self.view addSubview:yel];
    [yel release];
    

    // Do any additional setup after loading the view.
}

//实现协议中的方法
- (void)actionViewTouchBegean:(ActionView *)actionView {
    
    switch (actionView.tag) {
        case 100:
            //红色视图
            actionView.backgroundColor = [UIColor random];
            break;
            case 101:
            //父视图颜色改变
            actionView.superview.backgroundColor = [UIColor random];
            break;
            case 102:
            //蓝色视图
            actionView.center = CGPointMake(arc4random()% 200 + 50, arc4random()% 400 + 50);
            break;
            case 103:
            actionView.bounds = CGRectMake(0, 0, arc4random()%250 + 50, arc4random()%50 + 50);
            break;
        default:
            break;
    }
//    if (actionView.tag == 101) {
//        
//    }
    NSLog(@"%s %d",__FUNCTION__,__LINE__);
}
- (void)actionViewTouchEnd:(ActionView *)actionView {
    
    NSLog(@"%s %d",__FUNCTION__,__LINE__);
}
- (void)actionViewTouchMoved:(ActionView *)actionView {
    NSLog(@"%s %d",__FUNCTION__,__LINE__);
}
- (void)actionViewTouchCancelled:(ActionView *)actionView {
    NSLog(@"%s %d",__FUNCTION__,__LINE__);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
