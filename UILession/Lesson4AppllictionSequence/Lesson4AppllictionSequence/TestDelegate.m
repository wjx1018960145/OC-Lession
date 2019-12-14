//
//  TestDelegate.m
//  Lesson4AppllictionSequence
//
//  Created by lanouhn on 14/10/27.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "TestDelegate.h"

@implementation TestDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions NS_AVAILABLE_IOS(3_0){
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
    
    self.window.backgroundColor = [UIColor redColor];
    
    //让window可见
    [self.window makeKeyAndVisible];
    
    
    return YES;
}

- (void)applicationDidBecomeActive:(UIApplication *)application{
    
    
}
- (void)applicationWillResignActive:(UIApplication *)application{
    
}


- (void)dealloc {
    [_window release];
    [super dealloc];
}
@end
