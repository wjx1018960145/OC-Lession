//
//  Student.h
//  LessonProperty
//
//  Created by lanouhn on 14-10-16.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject

//{
//    NSString *_name;
//    NSString *_gender;//性别
//    NSString *_number;//学号
//    NSInteger _age;//年龄
//    CGFloat _score;//成绩
//    CGFloat _height;//s身高
//    CGFloat _weight;//体重
//    BOOL _isMrry;//婚否
//    NSString *_phoneNumber;//联系方式
//    NSString *_address;//地址
//    NSString *_bloodType;//血型
//    NSString *_major;//专业
//    NSString *_hobby;//爱好
//    
//}
//set get
//属相作用 自动生成setget方法
//在点h文件中会生成set get方法方法声明
//@synthsize 在点m文件中会生成set get的实现部分
//propety + 属相类型 (实例变量类型)+ 属相名字(和实例变量名字相同)
//
/*属性的特性
 1 读写特性:(readwrite :即可读又可写:即会生成set又会生成get方法)(默认读写特性)
 2 readonle(只读):只能生成get方法不会生成set方法
 3 getter = method 指定再生产get方法时的方法名 
 4 setter  = method 指定再生成setter方法名
 
 */
/*
 原子特性 
 1 nonatomic (非原子性):不能保证线程安全(建议使用)
 2 atomic(原子性):保证线程安全,(默认的原子性)
 因为在一段时间之内,如果使用atmic会频繁枷锁解锁,消耗系统资源,一般使用nonatomic
 
 */
/*
 语义特性
 1 assign:主要针对于基本数据类型.但也可以用于对象类型
 2 retain只能针对对象类型,让对象引用计数加1.(内存管理).
 3 copy:只能针对对象类型,复制出一个新的对象(内存管理).
 */
@property (nonatomic,retain) NSString *name;
@property (nonatomic ,retain) NSString *gender;
@property (nonatomic ,retain) NSString *number;
@property (nonatomic ) NSInteger age;
@property (nonatomic) CGFloat score;
@property (nonatomic) CGFloat height;
@property (nonatomic) CGFloat weight;
@property (nonatomic) BOOL isMrry;
@property (nonatomic ,retain) NSString  *phoneNumber;
@property (nonatomic ,retain) NSString *address;
@property (nonatomic ,retain) NSString *bloodType;
@property (nonatomic ,retain) NSString *major;
@property (nonatomic ,retain) NSString *hobby;
//- (void)setName:(NSString *)name;
//- (NSString *)name;

//- (void)setGender:(NSString *)gender;
//- (NSString *)gender;

//- (void)setNumber:(NSString *)number;
//- (NSString *)number;

//- (void)setAge:(NSInteger)age;
//- (NSInteger)age;

//- (void)setScore:(CGFloat)score;
//- (CGFloat)score;

//- (void)setHeight:(CGFloat)height;
//- (CGFloat)height;

//- (void)setWeight:(CGFloat)weight;
//- (CGFloat)weight;

//- (void)setIsMrried:(BOOL)isMrried;
//- (BOOL)ismrried;

//- (void)setPhoneNumber:(NSString *)phoneNumber;
//- (NSString *)phoneNumber;

//- (void)setAddress:(NSString *)address;
//- (NSString *)address;

//- (void)setBloodType:(NSString *)bloodType;
//- (NSString *)bloodType; vx

//- (void)setMajor:(NSString *)major;
//- (NSString *)major;

//- (void)setHobby:(NSString *)hobby;
//- (NSString *)hobby;


@end
