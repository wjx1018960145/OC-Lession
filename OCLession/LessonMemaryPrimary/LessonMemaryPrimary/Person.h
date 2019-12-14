//
//  Person.h
//  LessonMemaryPrimary
//
//  Created by lanouhn on 14-10-20.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject <NSCopying>
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *gender;
@property (nonatomic) NSInteger age;
@end
