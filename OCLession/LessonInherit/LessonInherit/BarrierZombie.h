//
//  BarrierZombie.h
//  LessonInherit
//
//  Created by lanouhn on 14-10-8.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Zombit.h"
@interface BarrierZombie : Zombit
{
    NSString *_prop;//道具
    NSString *_weakness;//弱点
    
}
- (id)initWithKind:(NSString *)kind totalBlood:(NSInteger)totalBlood lostBlood:(NSInteger)lostBlood prop:(NSString *)prop weakness:(NSString *)weakness;
//set get

- (void)lostEquipment;

@end
