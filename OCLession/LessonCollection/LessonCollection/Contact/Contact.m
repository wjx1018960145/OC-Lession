//
//  Contact.m
//  LessonCollection
//
//  Created by lanouhn on 14-10-13.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "Contact.h"

@implementation Contact
Contact *con;
//set get 方法

- (void)setName:(NSString *)name
{
    _name = name;
    
}
- (NSString *)name
{
    return _name;
    
}
- (void)setGender:(NSString *)gender
{
    _gender = gender;
}
- (NSString *)gender
{
    return _gender;
}
- (void)setPhoneNumber:(NSInteger)phoneNumber
{
    _phoneNumber = phoneNumber;
}
- (NSInteger)phoneNumber
{
    return _phoneNumber;
}
- (void)setAddress:(NSString *)address
{
    _address = address;
}
- (NSString *)address
{
    return _address;
}
- (void)setGroupName:(NSString *)groupName
{
    _groupName = groupName;
}
- (NSString *)groupName
{
    return _groupName;
}
- (void)setAge:(NSInteger)age
{
    _age = age;
}
- (NSInteger)age
{
    return _age;
}
//初始化方法
- (id)initWithName:(NSString *)name phoneNumber:(NSInteger)phoneNumber
{
    self = [super init];
    if (self) {
        _name = name;
        _phoneNumber = phoneNumber;
        
    }
    return self;
}
//多参初始化方法
- (id)initWithName:(NSString *)name gender:(NSString *)gender phoneNumber:(NSInteger)phoneNumber address:(NSString *)adress groupName:(NSString *)groupName age:(NSInteger)age;
{
    self = [super init];
    if (self) {
        _name = name;
        _gender = gender;
        _phoneNumber = phoneNumber;
        _address = adress;
        _groupName = groupName;
        _age = age;
    }
    return self;
    
}

//添加联系人
- (BOOL)addcontact:(NSString *)name gender:(NSString *)gender phoneNumber:(NSInteger)phoneNumber address:(NSString *)address groupName:(NSString *)groupName age:(NSInteger)age
{

        groupArr = [[NSMutableArray alloc] init];

    if (!_dic) {
        _dic = [[NSMutableDictionary alloc] init];
    }
    Contact *con = [[Contact alloc] init];
   
    BOOL isExistdic = [self selectDic:[name substringToIndex:1] dictionry:_dic];
    
    if (isExistdic == YES) {
        [con setName:name];
        [con setGender:gender];
        [con setPhoneNumber:phoneNumber];
        [con setAddress:address];
        [con setGroupName:groupName];
        [con setAge:age];
        groupArr = _dic[[name substringToIndex:1]];
        [groupArr addObject:con];
        
        [_dic setObject:groupArr forKey:[name substringToIndex:1]];
        NSLog(@"%@ %@ 添加成功!",name,gender);
        return YES;

//        BOOL isExis =[self select:name contcat:_contcats];
//        if (isExis == YES) {
//            return NO;
//        }else{
//            [con setName:name];
//            [con setGender:gender];
//            [con setPhoneNumber:phoneNumber];
//            [con setAddress:address];
//            [con setGroupName:groupName];
//            [con setAge:age];
//            [_contcats addObject:con];
//            [_dic setObject:_contcats forKey:[name substringFromIndex:0]];
//            NSLog(@"%@ %@ 添加成功!",name,gender);
//            return YES;
//        }
//        
//    }
    }
    else{
        [con setName:name];
        [con setGender:gender];
        [con setPhoneNumber:phoneNumber];
        [con setAddress:address];
        [con setGroupName:groupName];
        [con setAge:age];
        groupArr = _dic[[name substringToIndex:1]];
        [groupArr addObject:con];
        
        //[_contcats addObject:con];

        [_dic setObject:groupArr forKey:[name substringToIndex:1]];
        NSLog(@"%@ %@ 添加成功",name,gender);
    }
    
    return YES;

}

- (BOOL)select:(NSString *)name contcat:(NSMutableArray *)contcat
{
    for (Contact *arry in _contcats) {
        if ([arry name] == name) {
            return YES;
        }
    }
    return NO;
}

- (BOOL)selectDic:(NSString *)dicName dictionry:(NSMutableDictionary *)dictionry
{
    for (NSString *dic in _dic) {
        if (dic == dicName) {
            return YES;
        }
    }
    [_dic setObject:groupArr forKey:dicName];
    //NSLog(@"%@",dicName);
    return NO;
}
 //删除某个分组的所有人
- (void)deleterGroup:(NSString *)groupName
{
    for (NSString *arry in _dic) {
        if ([arry substringToIndex:1] == groupName) {
            [_dic removeAllObjects];
        }
    }
}
- (void)select:(NSInteger)number
{
    for (NSString *key in _dic) {
        //根据key获取对应的数组
        NSMutableArray *group = _dic[key];
        for (Contact *count in group) {
            //遍历到数组中的联系人
            if ([count phoneNumber]==number) {
                //联系人
                [count displayContactInfo];
            }
        }
    }

}
 //按姓名删除联系人)
- (void)deleter:(NSString *)name
{
    for (NSString *arry in _dic) {
        if ([name substringToIndex:1] == arry) {
            for (int i=0;i<[_contcats count];) {
                Contact *arry1 = _contcats[i];
                if ([arry1 name] == name) {
                    [_contcats removeObject:arry1];
                }else{
                    i++;
                }
            }
        }
    }
}
- (void)showALL
{
//    for (Contact *arry in _contcats) {
//        
//        NSLog(@"%@ %@",arry.name,arry.gender);
//    }
    NSLog(@"%@", _dic);
}
//获取所有女性的联系有人按照年龄排序s
- (void)showAllDisGender:(NSString *)genderName
{
    
    NSMutableArray *girArr = [[NSMutableArray alloc] initWithCapacity:1];
    for (NSString *key in _dic) {
        NSMutableArray *group = _dic[key];
        for (Contact *count in group) {
            if ([[count gender ]isEqualToString:genderName]) {
                [girArr addObject:count];
            }
        }
    }
     NSLog(@"%@",girArr);
}
//按年龄降序排序
- (void)showDisName:(NSString *)name1
{
    NSMutableArray *girArr = [[NSMutableArray alloc] initWithCapacity:1];
    
    [girArr sortedArrayUsingSelector:@selector(compareByAge:)];
    NSLog(@"%@",girArr);
    
}

//重写从父类继承过来的方法
//当通过%@打印一个当前对象时就会调用该方法
- (void)displayContactInfo
{
    return NSLog(@"name:%@ gender:%@ phoneNumber:%ld age:%ld", _name, _gender, _phoneNumber, _age);
}
- (NSString *)description
{
    return [NSString stringWithFormat:@"name:%@ gender:%@ phoneNumber:%ld age:%ld", _name, _gender, _phoneNumber, _age];
}

- (NSInteger)compareByAge:(Contact *)contact
{
    NSInteger age1 = [self age];
    NSInteger age2 = [contact age];
    if (age1 > age2) {
        return NSOrderedDescending;
        
    }else if (age1<age2){
        return NSOrderedAscending;
        
    }else{
        return NSOrderedSame;
    }
}
//        for (NSString *arry in _dic) {
//            if (arry == [name substringToIndex:1]) {
//                _contcats= _dic[[name substringToIndex:1]];
//                if (!_contcats) {
//                    //如果没有数组,就创建数组.
//                    _contcats = [NSMutableArray arrayWithCapacity:1];
//                    //将key以及vealu添加到字典中
//                    [_dic setObject:_contcats forKey:[name substringToIndex:1]];
//
//                }
//                [_contcats addObject:con];
//            }
//
//
//        }


@end
