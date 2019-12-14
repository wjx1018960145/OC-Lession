//
//  Student.m
//  LessonProperty
//
//  Created by lanouhn on 14-10-16.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "Student.h"

@implementation Student

//系统自动实现set get

//@synthesize 用来生成属行对应的setter gette以及相对应的内部实现
//name:属性名
//_name:setter 以及getter内部所操作的实例变量先查找给定的实例变量是否定义,如果未定义系统自动生成只不过自动生成的实例变量是私有的,只能本类文件访问.
//方法内部所要操作的实例变量.
//   默认实例变量和属性名相同
//
//@synthesize name = _name, gender = _gender,age = _age,hobby = _hobby,weight = _weight,height = _height,phoneNumber = _phoneNumber,address = _address,major = _major,isMrry = _isMrry,bloodType = _bloodType,score = _score;
//@synthesize gender = _gender;

//- (void)setName:(NSString *)name{
//    _name = name;
//}
//set get
//当语义特性声明为copy时 setter方法内部实现.
//- (void)setName:(NSString *)name{
//    
//    if (_name != name) {
//        [_name release];
//        _name = [name copy];
//    }
//}


//当语义特性声明为retain时 setter方法内部实现.
//- (void)setName:(NSString *)name
//{
//    if (_name != name) {
//        [_name release];
//        _name = [name retain];
//    }
//}
//当语义特性声明为assion时 setter方法内部实现.
//- (void)setName:(NSString *)name
//{
//    _name = name;
//}
//当语义特性声明为assion时 getter方法内部实现.
//- (NSString *)name{
//    return _name;
//}
//当语义特性声明为retain copy时 setter方法内部实现.
- (NSString *)name{
    return [[_name retain] autorelease];
}

//- (void)setGender:(NSString *)gender{
//    _gender = gender;
//}
//- (NSString *)gender{
//    return _gender;
//}
//- (void)setNumber:(NSString *)number{
//    _number = number;
//}
//- (NSString *)number{
//    return _number;
//}
//- (void)setAge:(NSInteger)age{
//    _age = age;
//}
//- (NSInteger)age{
//    return _age;
//}
//- (void)setScore:(CGFloat)score{
//    _score = score;
//    
//}
//- (CGFloat)score{
//    return _score;
//}
//- (void)setHeight:(CGFloat)height{
//    _height = height;
//}
//- (CGFloat)height{
//    return _height;
//}
//- (void)setWeight:(CGFloat)weight{
//    _weight = weight;
//}
//- (CGFloat)weight{
//    return _weight;
//}
//- (void)setIsMrried:(BOOL)isMrried{
//    _isMrried = isMrried;
//}
//- (BOOL)ismrried{
//    return _isMrried;
//}
//
//- (void)setPhoneNumber:(NSString *)phoneNumber{
//    _phoneNumber = phoneNumber;
//}
//- (NSString *)phoneNumber{
//    return _phoneNumber;
//}
//- (void)setAddress:(NSString *)address{
//    _address = address;
//}
//- (NSString *)address{
//    return _address;
//}
//
//- (void)setBloodType:(NSString *)bloodType{
//   
//}
//- (NSString *)bloodType{
//    return _bloodType;
//}
//- (void)setMajor:(NSString *)major{
//    _major = major;
//}
//- (NSString *)major{
//    return _major;
//}
//- (void)setHobby:(NSString *)hobby{
//    _hobby = hobby;
//}
//- (NSString *)hobby{
//    return _hobby;
//}

@end
