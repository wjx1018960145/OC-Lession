//
//  BarrierZombie.m
//  LessonInherit
//
//  Created by lanouhn on 14-10-8.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "BarrierZombie.h"

@implementation BarrierZombie
//set get
- (id)initWithKind:(NSString *)kind totalBlood:(NSInteger)totalBlood lostBlood:(NSInteger)lostBlood prop:(NSString *)prop weakness:(NSString *)weakness
{
     _kind = kind;
    _totalBlood = totalBlood;
    _lostBlood = lostBlood;
    _prop = prop;
    _weakness = weakness;
    return self;

}
- (void)setProp:(NSString *)prop
{
    _prop = prop;
}
- (NSString *)prop
{
    return _prop;
}
- (void)setWeekness:(NSString *)weakness
{
    _weakness = weakness;
}
- (NSString *)weakness
{
    return _weakness;
}



- (void)lostEquipment
{
    NSLog(@"丢失装备");
}
@end
