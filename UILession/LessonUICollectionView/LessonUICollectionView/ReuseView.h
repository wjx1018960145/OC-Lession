//
//  ReuseView.h
//  ScrollView
//
//  Created by 张浩 on 14/11/13.
//  Copyright (c) 2014年 jiangxiaofei. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol ReuseViewDelagate <NSObject>

- (void)pushToDetailsView:(UIGestureRecognizer *)sender;
@end

@interface ReuseView : UIView
@property (nonatomic, retain) id<ReuseViewDelagate>delagate;
- (id)initWithFrame:(CGRect)frame array:(NSArray *)array;

@end
