//
//  ThirdViewController.m
//  LessonUINavgationController
//
//  Created by lanouhn on 14/11/5.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "ThirdViewController.h"
#import "ForthViewController.h"
@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    
    UIButton  *push = [UIButton buttonWithType:UIButtonTypeSystem];
    push.frame = CGRectMake(50, 200, 200, 40);
    push.layer.cornerRadius = 5;
    [push setTitle:@"进入下面" forState:UIControlStateNormal];
    [push addTarget:self action:@selector(path:) forControlEvents:UIControlEventTouchUpInside];
    push.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:push];
    
    UIButton  *pop = [UIButton buttonWithType:UIButtonTypeSystem];
    pop.frame = CGRectMake(50, 260, 200, 40);
    pop.layer.cornerRadius = 5;
    [pop setTitle:@"返回上一页" forState:UIControlStateNormal];
    [pop addTarget:self action:@selector(pop:) forControlEvents:UIControlEventTouchUpInside];
    pop.backgroundColor = [UIColor blueColor];

    [self.view addSubview:pop];
    // Do any additional setup after loading the view.
}
- (void)path:(UIButton *)sender {
    ForthViewController *forth= [[ForthViewController alloc]init];
    
    [self.navigationController pushViewController:forth animated:YES];
    [forth release];
}
- (void)pop:(UIButton *)sender{
    [self.navigationController popViewControllerAnimated:YES];
    
}
- (void)dealloc{
    NSLog(@"kong");
    [super dealloc];
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
