//
//  LoginController.m
//  LessonXMPP
//
//  Created by lanouhn on 14/12/17.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "LoginController.h"

@interface LoginController ()<XMPPStreamDelegate>
@property (weak, nonatomic) IBOutlet UITextField *userNameText;
@property (weak, nonatomic) IBOutlet UITextField *passwordText;

@end

@implementation LoginController

- (void)viewDidLoad {
    [super viewDidLoad];
    //添加代理
    [[XMPPManager sharManager].stream addDelegate:self delegateQueue:dispatch_get_main_queue()];
    // Do any additional setup after loading the view.
}
- (IBAction)loginAction:(id)sender {
    [[XMPPManager sharManager]loginWithUserName:_userNameText.text WithPassword:_passwordText.text];
    
}
//密码验证成功
- (void)xmppStreamDidAuthenticate:(XMPPStream *)sender {
    //记录对应的用户名和密码
    [[NSUserDefaults standardUserDefaults] setValue:self.userNameText.text forKey:@"userName"];
    [[NSUserDefaults standardUserDefaults] setValue:self.passwordText.text forKey:@"password"];
    //记录是否登录状态
    [[NSUserDefaults standardUserDefaults] setValue:[NSNumber numberWithBool:YES] forKey:@"haveLogin"];
    //改变用户的在线状态
    XMPPPresence *presence = [XMPPPresence presenceWithType:@"available"];
    [[XMPPManager sharManager].stream sendElement:presence];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"登录成功" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [alert show];
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
    
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
