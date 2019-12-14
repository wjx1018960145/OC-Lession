//
//  ChatController.h
//  LessonXMPP
//
//  Created by lanouhn on 14/12/18.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChatController : UITableViewController<XMPPStreamDelegate>
//创建jid
@property (nonatomic, strong) XMPPJID *jid;
@end
