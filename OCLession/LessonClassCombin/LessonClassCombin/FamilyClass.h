//
//  FamilyClass.h
//  LessonClassCombin
//
//  Created by lanouhn on 14-10-7.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ManClass;
@class WomanClass;
@class ChildClass;

@interface FamilyClass : NSObject
{
    //男主人
    //女主人
    //少主
    ManClass *_host;
    WomanClass *_hostess;
    ChildClass *_young;//少主
    
}
//set and get
- (void)setHost:(ManClass *)host;
- (ManClass *)host;
//set and get
- (void)setHostess:(WomanClass *)hosttess;
- (WomanClass *)hosttess;
//set and get
- (void)setYoung:(ChildClass *)young;
- (ChildClass *)young;
- (void)sayHi;
@end
