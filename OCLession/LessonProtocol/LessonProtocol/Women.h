//
//  Women.h
//  LessonProtocol
//
//  Created by lanouhn on 14-10-18.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol WomenDelegate <NSObject>

- (void)sweep;//打扫卫生
- (void)makeFood;//做饭
- (void)writhCode;//编程
@optional
- (void)bronBaby;//生孩(选择)

@end






@class Man;
@interface Women : NSObject
@property (nonatomic, retain) NSString *name;//姓名
@property (nonatomic, retain) NSString *gender;//性别
@property (nonatomic) NSInteger age;//年龄
//Women的丈夫必须要服从MarryProtocol协议
//针对代理对象,语义对象为assign
//代理属性名字delegate
//代理可以是teach 也可以是man 类型不限定,但必须是一个对象,所以指定一个泛型id 可以代表所有对象类型.
@property (nonatomic, assign) id<WomenDelegate> delegate;//丈夫
//行为
- (void)birth;//出生
//时令
//地脏了
- (void)floorDirty;
//饿了
- (void)hungry;
//累了
- (void)tired;
//无聊了
- (void)boring;
//- (void)clean;//打扫
//- (void)cooking;//做饭
//- (void)programming;//编程
//- (void)giveBirth;//生孩

@end
