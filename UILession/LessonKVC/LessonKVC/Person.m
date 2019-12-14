//
//  Person.m
//  LessonKVC
//
//  Created by lanouhn on 14/11/10.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "Person.h"

@implementation Person


//- (void)setName:(NSString *)name {
//    if (_name != name) {
//        [_name release];
//        _name = [name copy];
//    }
//}
//- (void)setGender:(NSString *)gender {
//    if (_gender != gender) {
//        [_gender release];
//        _gender = [gender copy];
//    }
//}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@ %@ %@ %@ %@ %@", _name, _gender, _age, _address, _phone, _type];
}

//当通过kvc给实例变量赋值时,如果没有对应的key则会调用方法,实现以下即可,不用写任何实现内容
- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    
}
- (id)valueForUndefinedKey:(NSString *)key {
    
    return nil;
}
- (void)dealloc {
    self.name = nil;
    self.gender = nil;
    self.address = nil;
    self.type = nil;
    self.phone = nil;
    self.age = nil;
    [super dealloc];
}
@end
