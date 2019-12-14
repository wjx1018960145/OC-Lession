//
//  XMPPManager.h
//  LessonXMPP
//
//  Created by lanouhn on 14/12/17.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XMPPFramework.h"
@interface XMPPManager : NSObject <XMPPStreamDelegate,XMPPRosterDelegate,UIAlertViewDelegate>
//创建和服务器连接的通道
@property (nonatomic, strong) XMPPStream *stream;
//获取xmpp对象(单例)
+ (XMPPManager *)sharManager;
//执行登录操作
- (void)loginWithUserName:(NSString *)username WithPassword:(NSString *)password;
//执行注册操作
- (void)registeWithUserName:(NSString *)username WithPassword:(NSString *)password;
//创建花名册对象
@property (nonatomic,strong) XMPPRoster *roster;
//创建信息归档对象
@property (nonatomic, strong) XMPPMessageArchiving *messageArchiving;
//创建临时数据库进行数据存储
@property (nonatomic, strong) NSManagedObjectContext *context;

@end
