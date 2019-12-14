//
//  Person.h
//  LessonEtenssuinHeight
//
//  Created by lanouhn on 14-10-22.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, retain) NSString *name;//姓名
@property (nonatomic, retain) NSString *gender;//性别
@property (nonatomic) NSInteger age;//年龄
- (void)sayHi;

@end
