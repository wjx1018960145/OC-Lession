//
//  ManClass.h
//  LessonClassCombin
//
//  Created by lanouhn on 14-10-7.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
@class WomanClass;
@class ChildClass;

@interface ManClass : NSObject
{
    NSString *_name;
    WomanClass *_wife;
    ChildClass *_child;
}
//set get
- (void)setName:(NSString *)name;
- (NSString *)name;
//set get
- (void)setWife:(WomanClass *)wife;
- (WomanClass *)wife;
//set get
- (void)setChild:(ChildClass *)child;
- (ChildClass *)child;

- (void)sayHi;
@end
