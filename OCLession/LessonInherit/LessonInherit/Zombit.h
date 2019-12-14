//
//  Zombit.h
//  LessonInherit
//
//  Created by lanouhn on 14-10-8.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
//zombit 公共父类
//存储子类中相同的特征行为.
@interface Zombit : NSObject
{
    NSString *_kind;//种类
    NSInteger _totalBlood;//血量
    NSInteger _lostBlood;//失血量
}
//set get
- (void)setKind:(NSString *)kind;
- (NSString *)kind;

- (void)setTotalBlood:(NSInteger)totalBlood;
- (NSInteger)totalBlood;

- (void)setLostBlood:(NSInteger)lostBlood;
- (NSInteger)lostBlood;

- (void)beat;
- (void)del;
@end
