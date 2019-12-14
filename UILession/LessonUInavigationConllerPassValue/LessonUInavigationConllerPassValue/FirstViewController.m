//
//  FirstViewController.m
//  LessonUInavigationConllerPassValue
//
//  Created by lanouhn on 14/11/5.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "Singteton.h"
@interface FirstViewController ()<SecondViewControllerDelegate>

@end
/**
 *  界面间传值:
 1,又前往后传.
 葵花宝典:属性传值>
 招式:1.在后一个界面定义属性(属性类型和数据类型一致)
     2.当push到下一个界面之前,给属性赋值.
     3.在下一个界面中,对应的控件从属性中获取数据
 2,又后往前传.
 辟邪剑谱:协议代理传值:
 招式:1.在后一个界面定义协议,(协议中定一个传值的方法(方法有参数 参数类型和数据类型一样))
     2.在后一个界面定义代理属性.
     3.在前一个文件中设置代理
     4.代理对象的类服从协议.
     5.实现协议中的方法
     6.在后一个界面通知代理执行协议中的方法.
 3,log大招:单例模式(一个类只有一个对象)
 招式:1.新建一个单例类
     2.在这个类中添加遍历构造器,并且保证该方法无论调用多次,返回地址一样.
     3.为该类添加属性,存储要传递的数据.
     4.传递数据时,八数据储存到单例属性中
 
    5.当需要该数据中直接从单例属性中获取
 
 
 
 3,对个界面传值(既可以又前往后,又可以有后往前)
 
 */
@implementation FirstViewController

- (void)viewDidLoad {
   
    [super viewDidLoad];
    
    
//    UIScreen *sreen =  [UIScreen mainScreen];
//    UIScreen *sreen2 =  [UIScreen mainScreen];
//    NSLog(@"%p %p",sreen,sreen2);

//    UIApplication *applition =  [UIApplication sharedApplication];
//    UIApplication *applition1 =  [UIApplication sharedApplication];
//    NSLog(@"%p %p",applition,applition1);

//    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
//    NSUserDefaults *user2 = [NSUserDefaults standardUserDefaults];

     // [NSFileManager defaultManager];
    
    
    
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    UILabel * Label = [[UILabel alloc] initWithFrame:CGRectMake(40 , 100, 200, 30)];
    Label.text  = @"显示下条内容";
    Label.tag = 102;
    Label.textAlignment = NSTextAlignmentCenter;
    Label.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:Label];
    [Label release];
    
    UITextField *textfield = [[UITextField alloc] initWithFrame:CGRectMake(40, 160, 200, 30)];
    textfield.borderStyle = UITextBorderStyleRoundedRect;
    textfield.tag = 100;
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


}
- (void)push:(UIButton *)sender {
    SecondViewController *second= [[SecondViewController alloc] init];
    //3设置代理
    second.delegate = self;
    //单例操作
    //进入到下一个页面之前将数据存储到单例中
    //1获取label和输入框
     UILabel *label1 = (UILabel *)[self.view viewWithTag:102];
    UITextField *label2 = (UITextField *)[self.view viewWithTag:100];
    //2 获取label和textfield的数据
    NSString *str1 = label1.text;
    NSString *str2 = label2.text;
    //3获取单例对象
    Singteton *shared  =[Singteton sharedSingteton];
    //4数据存储到对应的单例属性中
    shared.firsttext = str1;
    shared.secondtext = str2;
    
    
    
    
    //push之前给属性赋值
    //1获取textfield的值
    UITextField *tf = (UITextField *)[self.view viewWithTag:100];
    //2获取textfield的内容
    NSString *str = tf.text;
    //3给属性赋值
     second.text = str;
    
    [self.navigationController pushViewController:second animated:YES
     ];
    
    
    [second release];
}
#pragma -mark--SecondViewControllerDelegate 协议方法

- (void)passValueAction:(NSString *)text{
    //数据让标签显示
    UILabel *label = (UILabel *)[self.view viewWithTag:102];
    label.text = text;
    NSLog(@"%@",text);
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    if ([self isViewLoaded]&&[self.view window]) {
        self.view = nil;
    }

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
