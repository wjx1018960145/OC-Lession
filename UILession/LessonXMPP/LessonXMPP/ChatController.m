//
//  ChatController.m
//  LessonXMPP
//
//  Created by lanouhn on 14/12/18.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "ChatController.h"
#import "RosterCell.h"
#import "ChatCell.h"
@interface ChatController ()
//创建聊天信息的存储对象
@property (nonatomic, strong) NSMutableArray *messageArr;

@end

@implementation ChatController

- (void)viewDidLoad {
    [super viewDidLoad];
    //初始化数组
    self.messageArr = [NSMutableArray array];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    //添加代理人
    [[XMPPManager sharManager].stream addDelegate:self delegateQueue:dispatch_get_main_queue()];
    //
    [self getHistoryMessage];
}
- (IBAction)sendAction:(id)sender {
    //添加消息对象
    XMPPMessage *message = [[XMPPMessage alloc] initWithType:@"chat" to:self.jid];
    NSLog(@"espofvheispvpegs");
    [message addBody:@"asdasdasd"];
    //执行消息发送
    [[XMPPManager sharManager].stream sendElement:message];
}

/**
 *  delagate
 */
//接受到消息
- (void)xmppStream:(XMPPStream *)sender didReceiveMessage:(XMPPMessage *)message {
    [self getHistoryMessage];
}
//发送消息
- (void)xmppStream:(XMPPStream *)sender didSendMessage:(XMPPMessage *)message {
    [self getHistoryMessage];
}
//获取聊天记录

- (void)getHistoryMessage {
    //设置聊天记录的查询请求
    
    NSFetchRequest *request = [[NSFetchRequest alloc] initWithEntityName:@"XMPPMessageArchiving_Message_CoreDataObject"];
    //设置过滤
    request.predicate = [NSPredicate predicateWithFormat:@"streamBareJidStr == %@ AND bareJidStr == %@",[XMPPManager sharManager].stream.myJID.bare,self.jid.bare];
    //设置排序
    NSSortDescriptor *sort = [[NSSortDescriptor alloc] initWithKey:@"timestamp" ascending:YES];
    request.sortDescriptors = @[sort];
    NSArray *messages = [[XMPPManager sharManager].context executeFetchRequest:request error:nil];
    if (self.messageArr.count) {
        [self.messageArr removeAllObjects];
    }
    [self.messageArr addObjectsFromArray:messages];
    NSLog(@"======%@",messages);
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return self.messageArr.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
     ChatCell *cell = [tableView dequeueReusableCellWithIdentifier:@"chatcell" forIndexPath:indexPath];
    
    XMPPMessageArchiving_Message_CoreDataObject *object = self.messageArr[indexPath.row];
    if (!object.isOutgoing) {
        cell.fromuserLab.text = self.jid.user;
    }else{
        cell.touserLab.text = [XMPPManager sharManager].stream.myJID.user;
    }
    cell.messageLab.text = object.body;
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    //获得cell
   
    
}


@end
