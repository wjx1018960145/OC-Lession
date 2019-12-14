//
//  CommonZombie.m
//  LessonInherit
//
//  Created by lanouhn on 14-10-8.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "CommonZombie.h"

@implementation CommonZombie
//set get

- (id)initWithKind:(NSString *)kind totalBlood:(NSInteger)totalBlood lostBlood:(NSInteger)lostBlood{
    _kind = kind;
    _totalBlood = totalBlood;
    _lostBlood = lostBlood;
    return self;
}

- (void)beat
{
    _lostBlood -= _lostBlood;
    NSLog(@"受打击");
}
- (void)del
{
    NSLog(@"死亡");
}
@end
