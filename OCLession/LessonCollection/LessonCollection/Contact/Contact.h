//
//  Contact.h
//  LessonCollection
//
//  Created by lanouhn on 14-10-13.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject
{
    NSString *_name;//姓名
    NSString *_gender;//性别
    NSInteger _phoneNumber;//电话号码
    NSString *_address;//住址
    NSString *_groupName;//组名
    NSInteger _age;//姓名
    NSMutableArray *_contcats;//数组实例变量
    NSMutableDictionary *_dic;//字典实例变量
     NSMutableArray *groupArr;
}
//set get 方法
- (void)setName:(NSString *)name;
- (NSString *)name;
- (void)setGender:(NSString *)gender;
- (NSString *)gender;
- (void)setPhoneNumber:(NSInteger)phoneNumber;
- (NSInteger)phoneNumber;
- (void)setAddress:(NSString *)address;
- (NSString *)address;
- (void)setGroupName:(NSString *)groupName;
- (NSString *)groupName;
- (void)setAge:(NSInteger)age;
- (NSInteger)age;
- (id)initWithName:(NSString *)name phoneNumber:(NSInteger)phoneNumber;
- (id)initWithName:(NSString *)name gender:(NSString *)gender phoneNumber:(NSInteger)phoneNumber address:(NSString *)adress groupName:(NSString *)groupName age:(NSInteger)age;

- (BOOL)addcontact:(NSString *)name gender:(NSString *)gender phoneNumber:(NSInteger)phoneNumber address:(NSString *)address groupName:(NSString *)groupName age:(NSInteger)age;//添加联系人
- (BOOL)select:(NSString *)name contcat:(NSMutableArray *)contcat;//查询
- (BOOL)selectDic:(NSString *)dicName dictionry:(NSMutableDictionary *)dictionry;
- (void)deleterGroup:(NSString *)groupName;//删除相同组下的了联系人
- (void)select:(NSInteger)number;//根据号码搜索此人
//- (void)selectAllwoman:(NSString *)gender; //查询出所有女性联系人
- (void)deleter:(NSString *)name;//根据姓名删除联系人
- (void)showAllDisGender:(NSString *)genderName;//查询某一组按年龄排序
- (void)showALL;
- (void)showDisName:(NSString *)name1;
- (NSInteger)compareByAge:(Contact *)contact;
- (void)displayContactInfo;
//告诉外界该方法已经重写
- (NSString *)description;
@end
