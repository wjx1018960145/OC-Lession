//
//  WomanClass.h
//  LessonClassCombin
//
//  Created by lanouhn on 14-10-7.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ManClass;
@class ChildClass;

@interface WomanClass : NSObject
{
    NSString *_name;
    ManClass *_husband;
    ChildClass *_child;
}
// set get
- (void)setName:(NSString *)name;
- (NSString *)name;
//set get
- (void)setHusband:(ManClass *)husband;
- (ManClass *)husband;
//set get
- (void)setChild:(ChildClass *)child;
- (ChildClass *)child;
- (void)sayHi;
@end
