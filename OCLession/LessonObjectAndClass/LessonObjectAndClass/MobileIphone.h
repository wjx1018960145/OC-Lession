//
//  MobileIphone.h
//  LessonObjectAndClass
//
//  Created by lanouhn on 14-10-6.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MobileIphone : NSObject
{
    NSString *name;//品牌名
    NSString *color;//颜色
    NSInteger num;//数量
    CGFloat money;//价格
    CGFloat weight;
}

- (void)talk;//对讲
- (void)takePhotos;//拍照
- (void)sendMessage;//发信息
- (void)lookMovie;//看电影

@end
