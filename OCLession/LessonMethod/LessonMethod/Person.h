//
//  Person.h
//  LessonMethod
//
//  Created by lanouhn on 14-10-7.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    /**
     *  实例变量的可见度(实例变量的访问范围)
     1 @public (公开的,)可以再本类文件以及以外的所有文件访问.
     2 @protected(受保护的)只能在本类以及子类文件中直接访问,其他文件不可访问
     3 @private(私有的)只能在本类中访问 子类不可访问.
     4 默认可见度 @protected
      1 为什么不默认@public
       @public会公开内部实现细节,违背封装原则.
      2 为什么不默认@private
       @private只能自己访问,子类也无法访问,违背继承原则.(可以继承过去 但是不能用)
     */
    //@public
    @private
    NSString *_name;//姓名
    NSString *_gender;//性别
    NSInteger _age;//年龄
   
    CGFloat _weight;//体重
    CGFloat _height;//身高
    NSString *_nation;
    NSString *_bloodType;
    BOOL _isMarried;
    
}
//设置器---setter方法
/**
 *  setter 方法命名规范:
    1 -号方法(对象调用) 无返回值(void) set+实例变量名首字母大写 有且只有一个参数 参数类型和实例变量名相同.
 *
 *  @return <#return value description#>
 */
//给实例变量赋值
//set name
- (void)setName:(NSString *)name;
//set age
- (void)setAge:(NSInteger)age;
//set height
- (void)setHeight:(NSInteger)height;
//set gender
- (void)setGender:(NSString *)gender;
//set weight
- (void)setWeight:(NSInteger)weight;
//set nation
- (void)setNation:(NSString *)nation;
//set bloodType
- (void)setBloodType:(NSString *)bloodType;
//.set isMarried
- (void)setIsMarried:(BOOL)isMarried;

//访问器==getter方法
/**
 *  getter命名规范:
    1 -号方法(对象调用)有返回值,类型和实例变量相同,无参数 方法名和实例变量相同.
 *
 *  @param  <# description#>
 *
 *  @return <#return value description#>
 */
//获取实例变量的值
//get name
- (NSString *)name;
//get gender
- (NSInteger)age;
//get height
- (NSInteger)height;
//get gender
- (NSString *)gender;
//get weight
- (NSInteger)weight;
//get nation
- (NSString *)nation;
//get blootype
- (NSString *)blooType;
//get isma=rried
- (BOOL)isMarried;
//行为
- (void)eat;
- (void)study;
- (void)work;
- (void)communication;
- (void)sayHi;
//加号方法
+ (void)test;
+ (void)test1:(NSInteger)a;
//test2:b:
+ (void)tets2:(NSInteger)a b:(NSInteger)b;
//test3:b:c:d:e:
+ (NSInteger)test3:(NSInteger)a b:(NSInteger)b c:(NSInteger)c d:(NSInteger)d e:(NSInteger)e;
@end
