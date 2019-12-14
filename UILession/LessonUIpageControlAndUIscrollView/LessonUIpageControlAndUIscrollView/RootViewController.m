//
//  RootViewController.m
//  LessonUIpageControlAndUIscrollView
//
//  Created by lanouhn on 14/11/4.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    //pageControl.分页控件.1用来表示页数 以及当前页数
    //处理页面切换
    UIPageControl *pagecontrol = [[UIPageControl alloc]initWithFrame:CGRectMake(10, 100, 300, 30)];
   // pagecontrol.backgroundColor = [UIColor whiteColor];
    //设置表示的总页数
    pagecontrol.numberOfPages = 7;
    //设置点的颜色
    pagecontrol.pageIndicatorTintColor = [UIColor redColor];
    //设置当前页的颜色
    pagecontrol.currentPageIndicatorTintColor = [UIColor greenColor];
    //设置默认选中页
    pagecontrol.currentPage = 3;
    //添加响应事件
    [pagecontrol addTarget:self action:@selector(handPage:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:pagecontrol];
    [pagecontrol release];
    
}
- (void)handPage:(UIPageControl *)sender {
    
    NSLog(@"%ld",(long)sender.currentPage);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    if ([self isViewLoaded] && [self.view window]) {
        self.view = nil;
    }
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
