//
//  SecondViewController.m
//  LessonUINavgationController
//
//  Created by lanouhn on 14/11/5.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"
@interface SecondViewController ()

@end
/**
 *  视图的显示与消失
 但从a进入到b时,a将要消失Viewwillappear --->b--viewWillAppear ---->A---viewDidDisappear-->B--viewDidAppear
 
 当a返回B时 B-ViewwillDisappear---->A---viewWillAppear----B--viewDidDisAppear----A--ViewDidAppear
 
 */
@implementation SecondViewController

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


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    
    UIButton  *push = [UIButton buttonWithType:UIButtonTypeSystem];
    push.frame = CGRectMake(50, 200, 200, 40);
    push.layer.cornerRadius = 5;
    [push setTitle:@"进入下面" forState:UIControlStateNormal];
    [push addTarget:self action:@selector(path:) forControlEvents:UIControlEventTouchUpInside];
    push.backgroundColor = [UIColor greenColor];
    push.backgroundColor = [UIColor greenColor];
    [self.view addSubview:push];
    
    UIButton  *pop = [UIButton buttonWithType:UIButtonTypeSystem];
    pop.frame = CGRectMake(50, 260, 200, 40);
    pop.layer.cornerRadius = 5;
    [pop setTitle:@"返回上一页" forState:UIControlStateNormal];
    [pop addTarget:self action:@selector(pop:) forControlEvents:UIControlEventTouchUpInside];
    pop.backgroundColor = [UIColor greenColor];
    pop.backgroundColor = [UIColor greenColor];
    [self.view addSubview:pop];
    
    
    // Do any additional setup after loading the view.
}
-(void)dealloc{
    NSLog(@"空间回收了");
    [super dealloc];
    
}
- (void)path:(UIButton *)sender {
    ThirdViewController *third = [[ThirdViewController alloc]init];
    [self.navigationController pushViewController:third animated:YES];
    
    [third release];
    NSLog(@"%lu",(unsigned long)[third retainCount]);
}
- (void)pop:(UIButton *)sender{
    [self.navigationController popViewControllerAnimated:YES];
    
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
