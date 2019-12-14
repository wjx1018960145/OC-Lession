//
//  ChildClass.h
//  LessonClassCombin
//
//  Created by lanouhn on 14-10-7.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ManClass;//假设后面的字符串是一个类,暂时先当做类使用.
@class WomanClass;
@interface ChildClass : NSObject
{
    NSString *_name;//姓名
    ManClass *_father;//父亲
    WomanClass *_mother;//母亲
}
//set get
- (void)steName:(NSString *)name;
- (NSString *)name;
//set get
- (void)setFather:(ManClass *)father;
- (ManClass *)father;
//set get
- (void)setMother:(WomanClass *)mother;
- (WomanClass *)mother;
- (void)sayHi;
@end
