//
//  registeController.m
//  LessonXMPP
//
//  Created by lanouhn on 14/12/17.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "registeController.h"
@interface registeController ()<XMPPStreamDelegate>
@property (weak, nonatomic) IBOutlet UITextField *userNameText;
@property (weak, nonatomic) IBOutlet UITextField *passwordText;

@end

@implementation registeController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[XMPPManager sharManager].stream addDelegate:self delegateQueue:dispatch_get_main_queue()];
    

}
//注册成功
- (void)xmppStreamDidRegister:(XMPPStream *)sender {
    //存储响应的用户名和密码
    [[NSUserDefaults standardUserDefaults] setObject:self.userNameText.text forKey:@"userName"];
    [[NSUserDefaults standardUserDefaults] setObject:self.passwordText.text forKey:@"password"];
    //存储登录状态
    [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithBool:YES] forKey:@"haveLogin"];
    //改变登录状态
    XMPPPresence *presence = [XMPPPresence presenceWithType:@"available"];
    [[XMPPManager sharManager].stream sendElement:presence];
                              
}
- (IBAction)registeAction:(id)sender {
    //执行注册操作
    [[XMPPManager sharManager] registeWithUserName:self.userNameText.text WithPassword:self.passwordText.text];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
