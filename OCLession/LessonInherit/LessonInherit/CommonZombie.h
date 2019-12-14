//
//  CommonZombie.h
//  LessonInherit
//
//  Created by lanouhn on 14-10-8.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Zombit.h"
@interface CommonZombie : Zombit

    //继承作用 简化代码
    /*
     继承的特点
     1. 一个子类只能有一个父类,(=只允许单继承)
     2 继承是单向的 不能a继承b b继承a 
     3 一个父类可以有多个子类,继承的类配成为子类,
     4 继承具有传递性,a->b b->c a拥有b c
     5 继承时会继承父类所有的特征(实例变量)和行为方法.
     */
    
//set get

- (id)initWithKind:(NSString *)kind totalBlood:(NSInteger)totalBlood lostBlood:(NSInteger)lostBlood;

@end
