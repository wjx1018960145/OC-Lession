//
//  Zombit.m
//  LessonInherit
//
//  Created by lanouhn on 14-10-8.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "Zombit.h"

@implementation Zombit

- (void)beat
{
    _lostBlood -= _lostBlood;
    NSLog(@"受打击");
}
- (void)del
{
    NSLog(@"死亡");
}
//set get
- (void)setKind:(NSString *)kind
{
    _kind = kind;
}
- (NSString *)kind
{
    return _kind;
}

- (void)setTotalBlood:(NSInteger)totalBlood
{
    _totalBlood = totalBlood;
}
- (NSInteger)totalBlood
{
    return _totalBlood;
}

- (void)setLostBlood:(NSInteger)lostBlood
{
    _lostBlood = lostBlood;
}
- (NSInteger)lostBlood
{
    return _lostBlood;
}

@end
