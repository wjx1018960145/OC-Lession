//
//  TouchView.h
//  LessionTargetAction
//
//  Created by lanouhn on 14/10/30.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface TouchView : UIView
//给外界提供接口,用来设置响应的目标以及行为,以及触发时机
- (void)addTarget:(id)target action:(SEL)action controlEvevt:(UIControlEvents)controlevent;
@end
