//
//  test.h
//  LessonBlock
//
//  Created by lanouhn on 14-10-15.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface test : NSObject
{
    NSString *_name;//姓名
    NSInteger _age;//年龄
    NSString *_number;//学号
    
}
- (void)setName:(NSString *)name;
- (NSString *)name;
- (void)setAge:(NSInteger)age;
- (NSInteger)age;
- (void)setNumber:(NSString *)number;
- (NSString *)number;
- (id)initWithName:(NSString *)name age:(NSInteger)age number:(NSString *)number;
+ (id)initWithName:(NSString *)name age:(NSInteger)age number:(NSString *)number;

- (NSString *)description;
@end
