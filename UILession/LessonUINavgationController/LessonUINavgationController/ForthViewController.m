//
//  ForthViewController.m
//  LessonUINavgationController
//
//  Created by lanouhn on 14/11/5.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "ForthViewController.h"

@interface ForthViewController ()

@end

@implementation ForthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //当行控制器属性
    //1.获取导航控制器所有视图控制器
    NSArray *arr= self.navigationController.viewControllers;
    NSLog(@"%@",arr);
    
    //获取栈顶的视图控制器
    NSLog(@"%@",self.navigationController.topViewController);
    
    
    
    self.view.backgroundColor = [UIColor blueColor];
    UIButton  *push = [UIButton buttonWithType:UIButtonTypeSystem];
    push.frame = CGRectMake(50, 200, 200, 40);
    push.layer.cornerRadius = 5;
    [push setTitle:@"返回上一页" forState:UIControlStateNormal];
    [push addTarget:self action:@selector(pop:) forControlEvents:UIControlEventTouchUpInside];
    push.backgroundColor = [UIColor greenColor];
    push.backgroundColor = [UIColor greenColor];
    [self.view addSubview:push];
    

    // Do any additional setup after loading the view.
}
- (void)pop:(UIButton *)sender {
    //1返回上一个页面
    /**
     *  导航控制器管理方式(栈)
     永远显示栈顶元素
     
     */
    [self.navigationController popViewControllerAnimated:YES];
    //返回第一个页面
    //[self.navigationController popToRootViewControllerAnimated:YES];
    //返回指定页面
//    [self.navigationController popToViewController:self.navigationController.viewControllers[1] animated:YES];
    
    
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
