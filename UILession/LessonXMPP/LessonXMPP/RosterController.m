//
//  RosterController.m
//  LessonXMPP
//
//  Created by lanouhn on 14/12/18.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "RosterController.h"
#import "RosterCell.h"
#import "ChatController.h"
@interface RosterController ()<XMPPRosterDelegate>
@property (nonatomic, strong) NSMutableArray *rosterArr;//好友列表
@end

@implementation RosterController

- (void)viewDidLoad {
    [super viewDidLoad];
    //初始化
    self.rosterArr = [NSMutableArray array];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    NSUserDefaults *userdefault = [NSUserDefaults standardUserDefaults];
    if([[userdefault objectForKey:@"haveLogin"]boolValue]  == YES){
        //执行登录操作
        [[XMPPManager sharManager] loginWithUserName:[userdefault objectForKey:@"userName"]WithPassword:[userdefault objectForKey:@"password"]];
        
    }
    //添加代理人
    [[XMPPManager sharManager].roster addDelegate:self delegateQueue:dispatch_get_main_queue()];
    
}
/**
 *  delegate
 */

//执行好友检索
- (void)xmppRosterDidBeginPopulating:(XMPPRoster *)sender {
    
}
//获取好友列表
- (void)xmppRoster:(XMPPRoster *)sender didRecieveRosterItem:(DDXMLElement *)item {
    //获得好友信息(jid包含UserName和domin(域名))
    NSString *jid = [[item attributeForName:@"jid"] stringValue];
    XMPPJID *roterjid = [XMPPJID jidWithString:jid resource:nil];
    //判断数组中是否存在jid
    if ([self.rosterArr containsObject:roterjid]) {
        return;
    }
    //添加用户信息(rosterJID)
    [self.rosterArr addObject:roterjid];
    //添加对应的cell
    NSIndexPath *indepath = [NSIndexPath indexPathForRow:self.rosterArr.count - 1 inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[indepath] withRowAnimation:UITableViewRowAnimationRight];
    
}
- (void)xmppRosterDidEndPopulating:(XMPPRoster *)sender {
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return self.rosterArr.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
     RosterCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    XMPPJID *jid = self.rosterArr[indexPath.row];
    cell.userName.text = jid.user;
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
    //获得点击的cell
    RosterCell *cell = sender;
    NSIndexPath *indexpath = [self.tableView indexPathForCell:cell];
    ChatController *chat =  segue.destinationViewController;
    chat.jid = self.rosterArr[indexpath.row];
}


@end
