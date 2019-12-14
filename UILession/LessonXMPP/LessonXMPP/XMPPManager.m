//
//  XMPPManager.m
//  LessonXMPP
//
//  Created by lanouhn on 14/12/17.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "XMPPManager.h"

@interface XMPPManager ()
@property (nonatomic, assign) NSInteger connectionToServerPurpose;
//设置存储登录密码
@property (nonatomic, copy) NSString *loginPassword;
//设置注册密码
@property (nonatomic, copy) NSString *registerPassword;
//记录发送好友添加请求的账号
@property (nonatomic, strong) XMPPJID *fromJID;

@end
static XMPPManager *manager = nil;
@implementation XMPPManager
//获取单例对象
+ (XMPPManager *)sharManager {
    static dispatch_once_t onceToken;
    //在程序第一次启动时调用 以后不再初始化
    dispatch_once(&onceToken, ^{
        manager = [[self alloc] init];
    });
    return manager;
}

- (instancetype)init {
    if (self = [super init]) {
        //配置通道信息
        self.stream = [[XMPPStream alloc] init];
        //指定对应的IP和端口号;
        self.stream.hostName = @"127.0.0.1";
        self.stream.hostPort = 5222;
        //添加代理人 放到主队列 dispatch_get_main_queue()
        [self.stream addDelegate:self delegateQueue:dispatch_get_main_queue()];
        //配置好友列表花名册
        //创建一个Storage对象
        XMPPRosterCoreDataStorage *rosterstorage = [XMPPRosterCoreDataStorage sharedInstance];
        self.roster = [[XMPPRoster alloc] initWithRosterStorage:rosterstorage];
        //唤醒通信通道
        [self.roster activate:self.stream];
        //添加响应的代理人 放到主队列 dispatch_get_main_queue()
        [self.roster addDelegate:self delegateQueue:dispatch_get_main_queue()];
       
        //创建信息归档存储对象
        XMPPMessageArchivingCoreDataStorage *messageStorage = [XMPPMessageArchivingCoreDataStorage sharedInstance];
         //配置信息归档对象
        self.messageArchiving = [[XMPPMessageArchiving alloc] initWithMessageArchivingStorage:messageStorage dispatchQueue:dispatch_get_main_queue()];
        //唤醒对应的通道
        [self.messageArchiving activate:self.stream];
        //获得信息归档存储对象的临时数据库
        self.context = messageStorage.mainThreadManagedObjectContext;
        
    }
    return self;
}
//连接到服务器
- (void)connectionToServer {
    //判断通道是否连接
    if([self.stream isConnected]){
        [self disconnectionToServer];
    }
    NSError *error = [[NSError alloc] init];
    //设定与服务器练接时间
    [self.stream connectWithTimeout:30 error:&error];
//    if(error){
//        NSLog(@"%@",error);
//    }
    
    
}
//执行登录操作
- (void)loginWithUserName:(NSString *)username WithPassword:(NSString *)password {
    //记录和服务器连接的目的
    self.connectionToServerPurpose = 0;
    //存储登录密码
    self.loginPassword = password;
    [self connectionToServerWithUserName:username];
}
//执行注册操作
- (void)registeWithUserName:(NSString *)username WithPassword:(NSString *)password {
    //记录和服务器练级的目的
    self.connectionToServerPurpose = 1;
    //存储注册密码
    self.loginPassword = password;
    //
    [self connectionToServerWithUserName:username];
}
//用户名执行登录操作
- (void)connectionToServerWithUserName:(NSString *)username {
    //生成JID(用户唯一标示)
    XMPPJID *jid = [XMPPJID jidWithUser:username domain:@"fengchangsendemac-mini-2.local" resource:nil];
    self.stream.myJID = jid;
    //连接到服务器
    [self connectionToServer];
}

/**
 *  xmppDelegate
 */
//连接成功
- (void)xmppStreamDidConnect:(XMPPStream *)sender {
    //0代表登录 1代表注册
    switch (self.connectionToServerPurpose) {
        case 0:
            [self.stream authenticateWithPassword:self.loginPassword error:nil];
            break;
            case 1:
            [self.stream registerWithPassword:self.registerPassword error:nil];
            break;
        default:
            break;
    }
    
}
//登录没密码验证通过
- (void)xmppStreamDidAuthenticate:(XMPPStream *)sender {
    //判断是否曾经登陆过
    if([[NSUserDefaults standardUserDefaults] objectForKey:@"haveLogin"] == NO){
        return;
    }
    //改变登录在线状态
    XMPPPresence *presence = [XMPPPresence presenceWithType:@"available"];
    [self.stream sendElement:presence];
}
//登录验证失败
- (void)xmppStream:(XMPPStream *)sender didNotAuthenticate:(DDXMLElement *)error {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"密码验证失败" delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:nil, nil];
    [alert show];
}
//已经接受到好友请求
- (void)xmppRoster:(XMPPRoster *)sender didReceivePresenceSubscriptionRequest:(XMPPPresence *)presence {
    //存储发送好友请求的用户
   self.fromJID = presence.from;
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"收到好友请求" message:self.fromJID.user delegate:nil cancelButtonTitle:@"拒绝" otherButtonTitles:@"添加", nil];
    [alert show];
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    switch (buttonIndex) {
        case 0:
            //拒绝
            [self.roster rejectPresenceSubscriptionRequestFrom:self.fromJID];
            break;
            case 1:
            //添加
            [self.roster acceptPresenceSubscriptionRequestFrom:self.fromJID andAddToRoster:YES];
            break;
        default:
            break;
    }
}
//密码注册成功
- (void)xmppStreamDidRegister:(XMPPStream *)sender {
    
}

//连接失败
- (void)xmppStreamConnectDidTimeout:(XMPPStream *)sender {
    
    UIAlertView *allter = [[UIAlertView alloc] initWithTitle:@"提示" message:@"连接失败" delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:nil, nil];
    [allter show];
}
//断开与服务器连接
- (void)disconnectionToServer {
    //改变我们的在线状态
    XMPPPresence *presence = [XMPPPresence presenceWithType:@"unavailable"];
    [self.stream sendElement:presence];
    //断开和服务器的连接
    [self.stream disconnect];
    
}
@end
