//
//  Person.m
//  LessonFileMangager
//
//  Created by lanouhn on 14/11/14.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "Person.h"

@implementation Person
- (instancetype)initWinthName:(NSString *)name gender:(NSString *)gender age:(NSInteger)age {
    self = [super init];
    if (self) {
        self.name = name;
        self.gender = gender;
        self.age = age;
    }
    return self;
}

- (void)dealloc {
    self.name = nil;
    self.gender = nil;
    [super dealloc];
}
//当对该类的对象归档时 会自动调用该类的方法,为该类的对象实例变量进行归档操作
- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:_name forKey:@"name"];
    [aCoder encodeObject:_gender forKey:@"gender"];
    [aCoder encodeObject:@(_age) forKey:@"age"];
    
}
//当对该对象进行反归档时 会调用该类的方法对该对象的实例变量进行反归档操作

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self) {
        self.name = [aDecoder decodeObjectForKey:@"name"];
        self.gender = [aDecoder decodeObjectForKey:@"gender"];
        self.age = [[aDecoder decodeObjectForKey:@"age"] integerValue];
    }
    return self;
}
@end
