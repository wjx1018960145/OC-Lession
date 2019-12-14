//
//  Compter.h
//  LessonInherit
//
//  Created by lanouhn on 14-10-8.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Compter : NSObject
{
    NSString *_kind;//
    NSString *_brand;//品牌
    CGFloat _size;//尺寸
}

//变量构造器
+ (id)compter;
- (id)initWithKind:(NSString *)kind brand:(NSString *)brand size:(CGFloat)size;
+ (id)compterWithKind:(NSString *)kind brand:(NSString *)brand size:(CGFloat)size;
@end
