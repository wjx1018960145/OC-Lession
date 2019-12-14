//
//  ViewController.m
//  LessonAnimation
//
//  Created by lanouhn on 14/11/25.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIView *first;
@property (strong, nonatomic) IBOutlet UIView *secondView;

@end

@implementation ViewController


//动画块
- (IBAction)animation:(UIButton *)sender {
    //    [UIView beginAnimations:@"wang" context:nil];
    //    //属性:frame bounds center transform anlpha backgroiundColor
    //    //属性动画(修改属性做动画)
    //
    //    //设置动画持续时间
    //    [UIView setAnimationDuration:10];
    //    //设置动画重复次数
    //    //[UIView setAnimationRepeatCount:2];
    //    //设置动画逆反
    //    [UIView setAnimationRepeatAutoreverses:YES];
    //    //设置动画延迟
    //    [UIView setAnimationDelay:2];
    //    //设置动画代理
    //    [UIView setAnimationDelegate:self];
    //    //设置当动画开始之前触发的方法
    //    [UIView setAnimationWillStartSelector:@selector(handBegain)];
    //    //设置当动画结束之后触发的方法
    //    [UIView setAnimationDidStopSelector:@selector(handEnd)];
    //    self.first.bounds = CGRectMake(0, 0, 50, 50);
    //    self.first.alpha = 0.3;//修改透明度
    //    self.first.backgroundColor = [UIColor redColor];//修改颜色
    //    self.first.center = CGPointMake(270, 400);
    //    //旋转45度
    //    self.first.transform = CGAffineTransformMakeRotation(M_PI_2);
    //    [UIView commitAnimations];//提交动画
    //过渡动画
    [UIView beginAnimations:@"hehhe" context:nil];
    [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:self.view cache:YES];
    //切换视图层级
    [self.view exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
    [UIView setAnimationDuration:2];
    
    
    
    [UIView commitAnimations];

}
- (void)handBegain{
    NSLog(@"开始了");
}
- (void)handEnd {
    NSLog(@"结束");
}
//block动画
- (IBAction)animationBlock:(UIButton *)sender {
//    [UIView animateWithDuration:2 animations:^{
//        self.first.center = CGPointMake(260, 400);
//    }];

    //终极动画
    //现将视图移动到200 400的位置然后将自身大小修改为50 50
//    [UIView animateWithDuration:2 animations:^{
//        self.first.center = CGPointMake(200, 400);
//    } completion:^(BOOL finished) {
//        [UIView animateWithDuration:2 animations:^{
//             self.first.bounds = CGRectMake(0, 0, 50, 50);
//        }];
//       
//    }];
    
    //高级动画(过渡动画)
    //fromview  上层视图 toView: 下层视图
    [UIView transitionFromView:self.secondView toView:self.first duration:2 options:UIViewAnimationOptionTransitionCurlUp completion:nil];

}
//
- (IBAction)animationTransition:(UIButton *)sender {
}
//设置
- (IBAction)animationCALayer:(UIButton *)sender {
    //1设置边框的粗细
    self.secondView.layer.borderWidth = 2;
    //设置边框的颜色
    self.secondView.layer.borderColor = [UIColor orangeColor].CGColor;
    //设置圆角
    //self.secondView.layer.cornerRadius = 15;
    //超出视图范围不显示]
    //self.secondView.layer.masksToBounds  =YES;
    //锚点 决定了视图旋转的基点
    //layer 层position 相当于视图的center
    self.secondView.layer.anchorPoint = CGPointMake(0, 0);
    NSLog(@"%@",NSStringFromCGPoint(self.secondView.layer.position));
    //设置透明度
    //layer层的opacity 相当于UIView的alpha
    self.secondView.alpha = 0.1;
    self.secondView.transform = CGAffineTransformMakeRotation(M_PI_4);
   
    
}
- (IBAction)animationBasic:(UIButton *)sender {
    // CAAnimation :CA动画的基类 只提供基本的功能
    //CA动画只是动画假象,并不会对视图做任何修改,但是uiview 动画会修改视图
    CABasicAnimation *cabasic = [CABasicAnimation animationWithKeyPath:@"position.y"];
    cabasic.fromValue = @50.0;//开始值
    cabasic.toValue = @400;//结束值
    cabasic.duration = 2;//持续时间
    [self.secondView.layer addAnimation:cabasic forKey:@"wang"];
    
}

- (IBAction)animationGroup:(UIButton *)sender {
    //keytime value 两个属性
    CAKeyframeAnimation *keyanimation = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    NSValue *value1 = [NSValue valueWithCGPoint:CGPointMake(20, 400)];
     NSValue *value2 = [NSValue valueWithCGPoint:CGPointMake(200, 400)];
     NSValue *value3 = [NSValue valueWithCGPoint:CGPointMake(160, 150)];
    
    keyanimation.values = @[value3,value1,value2,value3];
    keyanimation.duration  = 10;
    keyanimation.keyTimes = @[@0.0,@0.3,@0.6,@1.0];
    [self.secondView.layer addAnimation:keyanimation forKey:@"wang0"];
}
//过渡动画
- (IBAction)animationKeyFrame:(UIButton *)sender {
//    CATransition *transition = [CATransition animation];
//    
//    transition.type =  @"cube";
//    transition.subtype = kCATransitionFromLeft;
//    [self.secondView.layer addAnimation:transition forKey:@"wang"];
    CABasicAnimation *basic1 = [CABasicAnimation animationWithKeyPath:@"opacity"];
    basic1.fromValue  = @150;
    basic1.toValue = @400;
    basic1.duration  = 1;
    CABasicAnimation *basic2 = [CABasicAnimation animationWithKeyPath:@"position.y"];
    basic2.fromValue  = @150;
    basic2.toValue = @400;
    basic2.duration = 10;
       CAAnimationGroup *group = [CAAnimationGroup animation];
    group.duration = 100.0;
    group.animations = @[basic1, basic2];
    
    [self.secondView.layer addAnimation:group forKey:@"wa"];
    
}

- (IBAction)animationTransitions:(UIButton *)sender {
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
