//
//  RootViewController.m
//  LessionGestureRecogmizer
//
//  Created by lanouhn on 14/10/30.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "RootViewController.h"
#import "UIColor+Random.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    // Do any additional setup after loading the view.
    UIView *redView = [[UIView alloc]initWithFrame:CGRectMake(0, 40, 320, 400)];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    [redView release];
    
    //手势识别器
    //1轻拍手势(单击,双击)
    //1创建手势对象
    //2
//    UITapGestureRecognizer *tapgester = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapgesture:)];
//    //(2)配置手势属性
//    //轻拍的次数
//    //tapgester.numberOfTapsRequired = 4;
//    //需要手指个数
//    //tapgester.numberOfTouchesRequired = 2;
//    //(3)添加到视图上
//    [redView addGestureRecognizer:tapgester];
//    //(4)释放所有权
//    [tapgester release];
    //2.长按手势识别器
//    UILongPressGestureRecognizer *longPressGesture = [[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(hangLongGesture:)];
//    //识别长按的最小时间
//    longPressGesture.minimumPressDuration = 10;
//    
//    [redView addGestureRecognizer:longPressGesture];
//    
//    [longPressGesture release];
    
    //轻扫
    UISwipeGestureRecognizer *swipegesture = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipegesture:)];
    //设置轻扫方向
//    swipegesture.direction = UISwipeGestureRecognizerDirectionLeft | UISwipeGestureRecognizerDirectionRight | UISwipeGestureRecognizerDirectionUp | UISwipeGestureRecognizerDirectionDown;
//    
//    [redView addGestureRecognizer:swipegesture];
//    [swipegesture release];
//    UISwipeGestureRecognizer *swipegesture1 = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipegesture:)];
//    //设置轻扫方向
//    swipegesture1.direction =  UISwipeGestureRecognizerDirectionUp | UISwipeGestureRecognizerDirectionDown;
//    
//    [redView addGestureRecognizer:swipegesture1];
//    [swipegesture1 release];
//    NSInteger  y = 30;
//    for (int i = 0; i < 10; i++) {
//        swipegesture.direction = UISwipeGestureRecognizerDirectionLeft | UISwipeGestureRecognizerDirectionRight ;
//        
//        [redView addGestureRecognizer:swipegesture];
//        [swipegesture release];
//        UISwipeGestureRecognizer *swipegesture1 = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipegesture:)];
//
//        UIView *view = [[UIView alloc]initWithFrame:CGRectMake(10, y, 300, 20)];
//        [view addGestureRecognizer:swipegesture1];
//        [self.view addSubview:view];
//        
//        
//    }
    
    //平移手势
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(handPanGesture:)];
    
    [redView addGestureRecognizer:panGesture];
    
    [panGesture release];
    
    //捏合手势识别器
    
    UIPinchGestureRecognizer *pinchGesTure = [[UIPinchGestureRecognizer alloc]initWithTarget:self action:@selector(handPinchGesture:)];
    
    [redView addGestureRecognizer:pinchGesTure];
     [pinchGesTure release];

    //旋转手势识别器
    UIRotationGestureRecognizer *rotationGesTure = [[UIRotationGestureRecognizer alloc]initWithTarget:self action:@selector(handRotion:)];
    [redView addGestureRecognizer:rotationGesTure];
    [rotationGesTure release];

    
    //屏幕边缘手势识别器
    UIScreenEdgePanGestureRecognizer *screenEdge = [[UIScreenEdgePanGestureRecognizer alloc]initWithTarget:self action:@selector(handSereen:)];
    
    //设置屏幕边缘
    screenEdge.edges = UIRectEdgeLeft;
    [redView addGestureRecognizer:screenEdge];
    
    [screenEdge release];
    
    //如何移除视图上的手势
    [redView removeGestureRecognizer:screenEdge];
    //如何获得视图上的所有手势
    [redView gestureRecognizers];
    
//    NSMutableArray *arr = [NSMutableArray arrayWithObjects:@"aa",@"bb",@"cc", nil];
//    for (NSString *arr1 in arr) {
//        NSLog(@"%@",arr1);
//        [arr removeObject:arr1];
//    }
    //如何移除视图上的所有手势
    //当对同一个数组进行快速枚举时数组数据结构不能发生变化
    //每一次通过redView.gestureRecognizers获得数组都是不同的
    for (UIGestureRecognizer *gesture in redView.gestureRecognizers) {
        NSLog(@"%@",redView.gestureRecognizers);
         [redView removeGestureRecognizer:gesture];
    }
    

}
//屏幕边缘手势处理
- (void)handSereen:(UIScreenEdgePanGestureRecognizer *)screen {
    NSLog(@"123");
    //1 获得增量
    CGPoint p = [screen translationInView:screen.view];
    //移动
    screen.view.transform = CGAffineTransformTranslate(screen.view.transform, p.x, 0);
    //增量清零
    [screen setTranslation:CGPointZero inView:screen.view];
    
}

//旋转手势
- (void)handRotion:(UIRotationGestureRecognizer *)rotion {
    //1.以最初位置为基础
  //  rotion.view.transform = CGAffineTransformMakeRotation(rotion.rotation);
    
    //2.以上次为位置为基础
    rotion.view.transform = CGAffineTransformRotate(rotion.view.transform, rotion.rotation);
    //3.变换角度请零
    rotion.rotation = 0.0;
}


//捏合手势处理
- (void)handPinchGesture:(UIPinchGestureRecognizer *)pichGesture{
    
    //pichGesture.view.transform = CGAffineTransformMakeScale(pichGesture.scale, pichGesture.scale);
    //2以上一次变化为基础
    pichGesture.view.transform = CGAffineTransformScale(pichGesture.view.transform, pichGesture.scale, pichGesture.scale);
    //将之前缩放比例制一;
    pichGesture.scale = 1.0;
}


//处理平移手势
- (void)handPanGesture:(UIPanGestureRecognizer *)panGesTure {
    //获取增量
    CGPoint p = [panGesTure translationInView:panGesTure.view];
//    //2.移动视图
//    //问题 1 每次移动都是从初始位置移动2 以变化之后的位置为基础而变化.
//    panGesTure.view.transform = CGAffineTransformMakeTranslation(p.x, p.y);
    //以上次为基础
    panGesTure.view.transform = CGAffineTransformTranslate(panGesTure.view.transform, p.x, p.y);
    //3.将之前增量清零
    [panGesTure setTranslation:CGPointZero inView:panGesTure.view];
}
//轻拍视图
- (void)handleTapgesture:(UITapGestureRecognizer *)tapgster{
    tapgster.view.backgroundColor = [UIColor random];
    
    
}
- (void)hangLongGesture:(UILongPressGestureRecognizer *)longPressGesture{
    if (longPressGesture.state == UIGestureRecognizerStateBegan) {
        longPressGesture.view.superview.backgroundColor = [UIColor random];
    }
    
}
- (void)swipegesture:(UISwipeGestureRecognizer *)swipegesture{
    swipegesture.view.backgroundColor = [UIColor random];
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
