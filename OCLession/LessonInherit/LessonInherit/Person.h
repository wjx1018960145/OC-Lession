//
//  Person.h
//  LessonInherit
//
//  Created by lanouhn on 14-10-8.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *_name;
    NSString *_gender;
    NSInteger _age;
    CGFloat _weight;
    CGFloat _height;
    NSString *_bloodType;
}
- (id)initWithName:(NSString *)name gender:(NSString *)gender age:(NSInteger)age weight:(NSInteger)weight height:(NSInteger)height bloodType:(NSString *)bloodType;
//set and get
- (void)setName:(NSString *)name;
- (NSString *)name;
- (void)setGender:(NSString *)gender;
- (NSString *)gender;
- (void)setAge:(NSInteger)age;
- (NSInteger)age;
- (void)setWeight:(NSInteger)weight;
- (NSInteger)weight;
- (void)setHeight:(NSInteger)height;
- (NSInteger)height;
- (void)setBloodType:(NSString *)bloodType;
- (NSString *)bloodType;
- (void)sayHi;
@end
