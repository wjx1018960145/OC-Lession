//
//  RootViewController.m
//  LessonUIScrollView
//
//  Created by lanouhn on 14/11/4.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()<UIScrollViewDelegate>

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    
    // Do any additional setup after loading the view.
    //UIscrollView 是ios中的滑动控件,用来解决当显示内容超过屏幕大小时可以通过滑动操作看全内容区域
    
    //1创建对象
    
    UIScrollView *scro = [[UIScrollView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    //配置属性
    scro.backgroundColor = [UIColor yellowColor];
    //设置内容区域大小
    scro.contentSize = CGSizeMake(320, 568);
    //设置关闭滑动器
    //a 关闭水平滑动指示器
    scro.showsHorizontalScrollIndicator = NO;
    //b关闭垂直滑动指示器
    scro.showsVerticalScrollIndicator = NO;
    //关闭反弹效果
    //scro.bounces = NO;
//设置scroll的偏移量 修改scroll的contentOffset (修改自身坐标原点的位置,从而让这子视图)
//x 变大内容区域往左走,看到右边的内容.
    //y变大 内容区域往上走,看到下边的东西.
    
   // scro.contentOffset = CGPointMake(320, 400);
    
    //设置scrollView的是否可以滑动
    //scro.scrollEnabled  =NO;
    //控制scrolview单向滑动 默认为NO
    scro.directionalLockEnabled = YES;
    //设置内容区域大小和scollview 大小时,也具有反弹效果
    scro.alwaysBounceHorizontal = YES;
    scro.alwaysBounceVertical= YES;
    
    //设置点击顶部状态条,scrollView是否回到顶部默认为yes
    scro.scrollsToTop = YES;
    
    //代理
    scro.delegate = self;
    //设置缩放属性
    //最小缩放比例
    scro.minimumZoomScale = 1.0;
    //最大缩放比例
    scro.maximumZoomScale = 4.0;
    
    
    
    [self.view addSubview:scro];
    [scro release];
    UIImageView *imageview  =[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, scro.contentSize.width, scro.contentSize.height)];
    imageview.tag = 100;
    imageview.image = [UIImage imageNamed:@"1.jpg"];
    [scro addSubview:imageview];
    [imageview release];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(10, 100, 100, 40);
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"还原" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(handButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}
//scrollView只要滚动就会触发
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
}

- (void)scrollViewDidZoom:(UIScrollView *)scrollView NS_AVAILABLE_IOS(3_2){
    
}

- (void)handButton:(UIButton *)sender {
    UIScrollView *scroll =[self.view.subviews firstObject];
    [scroll setZoomScale:1.0 animated:YES];
    NSLog(@"123");
}
#pragma mark - UIScrollDelegate
//当手指接触到scroll,将要时触发
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    
    NSLog(@"%s %d",__FUNCTION__,__LINE__);
}

- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset NS_AVAILABLE_IOS(5_0) {
    NSLog(@"%s %d",__FUNCTION__,__LINE__);
}
//当手指离开scrollView结束时
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
    
    NSLog(@"%s %d",__FUNCTION__,__LINE__);
    
}
//此时手指离开scrol
//scroll将要开始减速时触发
- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView {
    NSLog(@"%s %d",__FUNCTION__,__LINE__);
}
//当scrol 结束减速时触发.
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    NSLog(@"%s %d",__FUNCTION__,__LINE__);
    
}
//当scrollview修改时带有动画效果是触发
- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView {
    NSLog(@"%s %d",__FUNCTION__,__LINE__);
}
//设置secrollview 缩放视图,必须是scrollView子视图

//只要缩放就会触发
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    
    NSLog(@"%s %d",__FUNCTION__,__LINE__);
    
    return [self.view viewWithTag:100];
}
//当scrollView将要缩放时触发
- (void)scrollViewWillBeginZooming:(UIScrollView *)scrollView withView:(UIView *)view NS_AVAILABLE_IOS(3_2) {
    
}
//当scrollview结束时触发
- (void)scrollViewDidEndZooming:(UIScrollView *)scrollView withView:(UIView *)view atScale:
(CGFloat)scale{
    NSLog(@"%s %d",__FUNCTION__,__LINE__);
}

//当询问点击状态条scrollView是否能够回到顶部时触发,
//如果属性scollview设置为yes然后进一步询问代理方法
//如果属性scrol;ltotop设置为no 无需进一步询问代理
- (BOOL)scrollViewShouldScrollToTop:(UIScrollView *)scrollView {
    NSLog(@"%s %d",__FUNCTION__,__LINE__);
    
    return NO;
}
//当少scrollView能够回到顶部时触发
- (void)scrollViewDidScrollToTop:(UIScrollView *)scrollView {
    NSLog(@"%s %d",__FUNCTION__,__LINE__);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    if ([self isViewLoaded] && [self.view window]) {
        self.view  =nil;
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
