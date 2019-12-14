//
//  FirstViewController.m
//  LessonUINavgationController
//
//  Created by lanouhn on 14/11/5.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
@interface FirstViewController ()

@end
/**
 *  导航控制器管理多个视图控制器方法
 原理:以栈的形式管理
 当push时,创建视图控制器对象,视图控制器进栈
 当pop时 视图控制器出栈.视图控制器对象空间回收,
 永远显示栈顶元素的根视图
 
 */
@implementation FirstViewController

#pragma mark --- Fister 
/**
 *  在firstController 如何扑捉到已经返回到当前页面了.
 ViewwillApper,(vip)
 viewDidAppear.
 *
 *  @param animated <#animated description#>
 */
- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"%s,%d",__FUNCTION__,__LINE__);
    [super viewWillAppear:animated];
}
- (void)viewDidAppear:(BOOL)animated {
    NSLog(@"%s,%d",__FUNCTION__,__LINE__);
    [super viewDidAppear:animated];
}
- (void)viewWillDisappear:(BOOL)animated {
    NSLog(@"%s,%d",__FUNCTION__,__LINE__);
    [super viewWillDisappear:animated];
}
//公共属性,直接对导航条修改,修改之后其它界面会受影响

- (void)navgationBarCommonProperty {
    
    //1修改一下导航条的颜色
    //self.navigationController.navigationBar.barTintColor = [UIColor redColor];
    //修改导航条的渲染颜色
    self.navigationController.navigationBar.tintColor = [UIColor redColor];
    //3.将导航条隐藏掉
    self.navigationController.navigationBarHidden = NO;
    //关闭导航条的毛玻璃效果
    self.navigationController.navigationBar.translucent = YES;
    //设置导航条背景图片
    //[self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"32064"] forBarMetrics:UIBarMetricsDefault];
    /**
     *  1图片尺寸不同 导航条显示的效果不同
     
     1,小于44将图片拉伸显示在导航条以及状态条上
     2,等于44只会在导航条上显示图片
     3,大于44小于64 将图片平铺显示在导航条以及状态条上
     2等于64正好显示在导航条以及状态上
     *
     *  @return <#return value description#>
     */
    //如何获取图片大小
    CGSize imagesize =[UIImage imageNamed:@"32064"].size;
    NSLog(@"%@",NSStringFromCGSize(imagesize));
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton  *push = [UIButton buttonWithType:UIButtonTypeSystem];
    push.frame = CGRectMake(50, 200, 200, 40);
    push.layer.cornerRadius = 5;
    [push setTitle:@"进入下面" forState:UIControlStateNormal];
    [push addTarget:self action:@selector(handPush:) forControlEvents:UIControlEventTouchUpInside];
    push.backgroundColor = [UIColor greenColor];
    push.backgroundColor = [UIColor greenColor];
    [self navgationBarCommonProperty];
    [self.view addSubview:push];
    // Do any additional setup after loading the view.
}
- (void)handPush:(UIButton *)sender {
    //进入下一个页面
    //创建第二个视图对象
    
    SecondViewController *second = [[SecondViewController alloc]init];
    //navigationController 视图控制的属性 能够获取当前管理视图控制器的导航控制器
    [self.navigationController pushViewController:second animated:YES];
    [second release];
       NSLog(@"123");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    if ([self isViewLoaded]&&[self.view window]) {
        self.view=nil;
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
