//
//  SecondViewController.m
//  LessonUInavigationConllerPassValue
//
//  Created by lanouhn on 14/11/5.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "Singteton.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)dealloc{
    [_text release];
    [super dealloc];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    UILabel * Label = [[UILabel alloc] initWithFrame:CGRectMake(40 , 100, 200, 30)];
    //从属性中获取数据
    
    Label.text  = self.text;
    Label.textAlignment = NSTextAlignmentCenter;
    Label.tag = 104;
    Label.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:Label];
    [Label release];
    
    UITextField *textfield = [[UITextField alloc] initWithFrame:CGRectMake(40, 160, 200, 30)];
    textfield.borderStyle = UITextBorderStyleRoundedRect;
    //给单例处理输入框显示文字
    textfield.text = [Singteton sharedSingteton].firsttext;
    textfield.tag = 101;
    textfield.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:textfield];
    [textfield release];
    
    UIButton  *btu = [UIButton buttonWithType:UIButtonTypeSystem];
    btu.frame = CGRectMake(40, 280, 200, 30);
    btu.layer.cornerRadius = 5;
    [btu setTitle:@"进入下一个页面" forState:UIControlStateNormal];
    [btu addTarget:self action:@selector(push:) forControlEvents:UIControlEventTouchUpInside];
    
    btu.backgroundColor = [UIColor greenColor];
    [self.view addSubview:btu];
    
    UIButton  *btu1 = [UIButton buttonWithType:UIButtonTypeSystem];
    btu1.frame = CGRectMake(40, 320, 200, 30);
    btu1.layer.cornerRadius = 5;
    [btu1 setTitle:@"返回" forState:UIControlStateNormal];
    [btu1 addTarget:self action:@selector(pop:) forControlEvents:UIControlEventTouchUpInside];
    
    btu1.backgroundColor = [UIColor greenColor];
    [self.view addSubview:btu1];

    // Do any additional setup after loading the view.
}
- (void)push:(UIButton *)sender {
    ThirdViewController *thierd= [[ThirdViewController alloc] init];
    
//    //push之前给属性赋值
//    //1获取textfield的值
//    UITextField *tf = (UITextField *)[self.view viewWithTag:100];
//    //2获取textfield的内容
//    NSString *str = tf.text;
//    //3给属性赋值
//    thierd.Label.text = str;
    
    [self.navigationController pushViewController:thierd animated:YES
     ];
    
    
    [thierd release];
}
- (void)pop:(UIButton *)sender {
    //再返回上一个界面之前执行代理方法
    //获取输入框
    UITextField *tf = (UITextField *)[self.view viewWithTag:101];
    //获取文字
    NSString *str = tf.text;
    if ([self.delegate respondsToSelector:@selector(passValueAction:)]) {
        [self.delegate passValueAction:str];
    }
    [self.navigationController popViewControllerAnimated:YES];
    
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
