//
//  Person.h
//  LessonFileMangager
//
//  Created by lanouhn on 14/11/14.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject<NSCoding>
//如果相对一个对象归档操作 必须服从归档协议 并且实现协议中的方法
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *gender;
@property (nonatomic, assign) NSInteger age;
- (instancetype)initWinthName:(NSString *)name gender:(NSString *)gender age:(NSInteger)age;
@end
