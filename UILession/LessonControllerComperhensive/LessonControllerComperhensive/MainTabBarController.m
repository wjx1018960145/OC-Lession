//
//  MainTabBarController.m
//  LessonControllerComperhensive
//
//  Created by lanouhn on 14/11/13.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "MainTabBarController.h"
#import "MessageListController.h"
#import "AddressListController.h"
#import "DiscoverController.h"
#import "MineController.h"
@interface MainTabBarController ()

@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configuerViewController];
    self.navigationItem.title = @"废材";
    //配置
}
- (void)configuerViewController {
    MessageListController *message = [[MessageListController alloc] initWithStyle:UITableViewStylePlain];
    message.tabBarItem.title = @"消息";
    message.tabBarItem.image = [UIImage imageNamed:@"tabbar_mainframe"];
    UINavigationController *navgation = [[UINavigationController alloc] initWithRootViewController:message];
    navgation.tabBarItem.title  = @"消息";
    AddressListController *address = [[AddressListController alloc] initWithStyle:UITableViewStylePlain];
    address.tabBarItem.title = @"通讯录";
    address.tabBarItem.image = [UIImage imageNamed:@"tabbar_contacts"];
    UINavigationController *addressnav = [[UINavigationController alloc] initWithRootViewController:address];
    DiscoverController *discove = [[DiscoverController alloc] initWithStyle:UITableViewStylePlain];
    discove.tabBarItem.title = @"发现";
    discove.tabBarItem.image = [UIImage imageNamed:@"tabbar_discover"];
    UINavigationController *discovenav = [[UINavigationController alloc] initWithRootViewController:discove];
    MainTabBarController *main = [[MainTabBarController alloc] init];
    main.tabBarItem.title = @"我";
    main.tabBarItem.image = [UIImage imageNamed:@"tabbar_me"];
    UINavigationController *mainnav = [[UINavigationController alloc] initWithRootViewController:main];
    
    //管理导航控制器
    //管理单视图控制器
    NSArray *viewController = @[message,address,discove,main];
    self.viewControllers = viewController;
    
    [message release];
    [navgation release];
    [address release];
    [addressnav release];
    [discove release];
    [discovenav release];
    [main release];
    [mainnav release];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    if ([self isViewLoaded]&&[self.view window]) {
        self.view = nil;
    }

    // Dispose of any resources that can be recreated.
}


@end
