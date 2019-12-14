//
//  AssistantProtocol.h
//  LessonProtocol
//
//  Created by lanouhn on 14-10-18.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 *  协议:只有一堆方法的声明.(.h文件)
    @protocol 开头 + 协议名  <NSObject>(服从协议)
 @end 结束
 @required修饰是必须实现的 @optional修饰可以选择实现的 默认是required
 */
@protocol AssistantProtocol <NSObject>
@required//必须
//打扫闻声
- (void)clean;
//发快递
- (void)sendExpressage;
//买票
- (void)buyTickey;
//开车
- (void)drive;
@optional//可选
//洗脚
- (void)washFeet;
@end
