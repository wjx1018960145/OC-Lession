//
//  Teacher.h
//  LessonMemaoryHeight
//
//  Created by lanouhn on 14-10-21.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Teacher : NSObject  <NSCopying>
@property(nonatomic, retain) NSString *name;
@property(nonatomic, retain) NSString *gender;
@property(nonatomic) NSInteger age;
- (id)initWithName:(NSString *)name gender:(NSString *)gender age:(NSInteger)age;

+ (id)teacherWithName:(NSString *)name gender:(NSString *)gender age:(NSInteger)age;
- (void)sayHi;
- (void)dealloc;
@end
