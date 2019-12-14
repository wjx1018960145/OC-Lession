//
//  NSString+SayHi.h
//  LessonExtension
//
//  Created by lanouhn on 14-10-17.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
//分类 Category 类目:
//为没有原码的类扩充功能,只能扩充方法,不能扩充实例方法.
//为原有的类扩充方法就是该类的方法,直接可以通过该类的对象类调用.
@interface NSString (SayHi)
//能够获取首字母,作为一个字符串输出
- (NSString *)fistCharactor;
- (void)sayHi;

@end
