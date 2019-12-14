//
//  TonchView.m
//  LessionTouch
//
//  Created by lanouhn on 14/10/29.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "TonchView.h"

#import "UIColor+Random.h"
@implementation TonchView

//触摸开始触发(手指刚刚接触屏幕)
- (instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        //ios 支持多点触摸,但是默认是单点触摸
        //ios 最多支持11个点.
        self.multipleTouchEnabled = YES;
        
    }
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    //touch 存储的是手指对象UItouch(手指类)
    //1获取到触摸视图的手指对象
    UITouch *touhc = [touches anyObject];
    //2
    if (2 == [touches  count] && [touhc tapCount] == 1) {
        [self changSelfColor];
    }
        
//    //2.根据手指轻拍次数进行处理
//    if (1 == [touhc  tapCount]) {
//        //延迟执行
//        [self performSelector:@selector(changSelfColor) withObject:nil afterDelay:0.2];
//    }else if (2 == [touhc tapCount]){
//        //取消掉之前的操作
//        [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(changSelfColor) object:nil];
//        [self changPosition];
//    }

    
    
    NSLog(@"%lu",[touches count]);
    
}
//触摸结束时 (手指离开)
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    // [self changPosition];
    
//    [self changSelfColor];
}
//触摸移动的触发(手指接触视图不离开,然后移动)
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
//    [self changSuperColor];
//    [self changSelfColor];hyhjmrfr
    
}
//触摸取消(触摸中断)比如电话进入
- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
   
}

//改变自身颜色
- (void)changSelfColor{
self.backgroundColor = [UIColor random];
}
//改变父视图颜色
- (void)changSuperColor{
    self.superview.backgroundColor = [UIColor random];
    self.backgroundColor = [UIColor random];
}

- (void)changPosition{
    self.center = CGPointMake(arc4random()&321, arc4random()%569);
    
}
@end
