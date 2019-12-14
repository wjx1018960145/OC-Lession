//
//  LaunchViewController.m
//  LessonUIpageControlAndUIscrollView
//
//  Created by lanouhn on 14/11/4.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "LaunchViewController.h"
#import "RootViewController.h"
#import "Macor.h"
@interface LaunchViewController ()<UIScrollViewDelegate>

@end

@implementation LaunchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
  
    //布局子视图
    [self setUpSubviews];
    
    
}

- (void)setUpSubviews {
    //布局scrollview
    [self setUpScollvoew];
    //布局pageControler
    [self setUpPageControl];
    
    
}

//布局scrollview
#pragma mark --layoutview 布局视图
- (void)setUpScollvoew {
    UIScrollView *scrollview = [[UIScrollView alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
    scrollview.contentSize = CGSizeMake(320 * kUserGuideCount, scrollview.frame.size.height);
    scrollview.tag = 100;
    //设置scrollview整屏滑栋
    scrollview.pagingEnabled = YES;
    scrollview.showsHorizontalScrollIndicator = NO;
    [self.view addSubview:scrollview];
    scrollview.delegate = self;
    [scrollview release];
    for (int i = 0; i < kUserGuideCount; i++) {
        UIImageView *imageview = [[UIImageView alloc]initWithFrame:CGRectMake(320 * i, 0, 320, 568)];
        imageview.image  =[UIImage imageNamed:[NSString stringWithFormat:@"%@%d",kUserGuideName,i + 1]];
        [scrollview addSubview:imageview];
        [imageview release];
        if (kUserGuideCount-1 == i) {
            imageview.userInteractionEnabled = YES;
            [self addTapGestureForView:imageview];
        }
    }
    
}
#pragma mark ---scrollViewDidEndDecelerating
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    //1获取pagecontrols
    UIPageControl *pagecontrol = (UIPageControl *)[self.view viewWithTag:101];
    //2修改pagecontrol 的currentpage与scrollview保持一致
    pagecontrol.currentPage = scrollView.contentOffset.x / 320;
    
}
//布局pageControler
- (void)setUpPageControl {
    UIPageControl *pagecontrokl = [[UIPageControl alloc]initWithFrame:CGRectMake(10, 520, 300, 30)];
    pagecontrokl.tag = 101;
    pagecontrokl.numberOfPages = kUserGuideCount;
    pagecontrokl.currentPage = 0;
    pagecontrokl.pageIndicatorTintColor = [UIColor redColor];
    pagecontrokl.currentPageIndicatorTintColor =[UIColor greenColor];
    [self.view addSubview:pagecontrokl];
    [pagecontrokl addTarget:self action:@selector(handPage:) forControlEvents:UIControlEventValueChanged];
    [pagecontrokl release];
    
}

#pragma kark ---hand action 响应事件
- (void)handPage:(UIPageControl *)sender {
    //
    UIScrollView *scrollview = (UIScrollView *)[self.view viewWithTag:100];
    //修改scrolview偏移量
    [scrollview setContentOffset:CGPointMake(320 * sender.currentPage, 0) animated:YES];
}
- (void)handTap:(UIGestureRecognizer *)tapgesture {
    //将元素写入表中
    NSUserDefaults *userDfautle = [NSUserDefaults  standardUserDefaults];
    [userDfautle setBool:YES forKey:kFirstLunchKey];
    [userDfautle synchronize];//立即同步
    //当用户点击最后一个ImageViewer 进入到应有程序的主页面,切换应有程序window的根视图
    RootViewController *rootvc = [[RootViewController alloc]init];
    //更换window是根视图控制器
    [[UIApplication sharedApplication].keyWindow setRootViewController:rootvc];
    
    NSLog(@"12");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    if ([self isViewLoaded] && [self.view window]) {
        self.view = nil;
    }
}
 //添加轻拍手势
- (void)addTapGestureForView:(UIView *)view {
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handTap:)];
    [view addGestureRecognizer:tap];
    [tap release];
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
