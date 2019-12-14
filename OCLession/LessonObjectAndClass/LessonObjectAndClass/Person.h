//
//  Person.h
//  LessonObjectAndClass
//
//  Created by lanouhn on 14-10-6.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 *  类的定义:接口部分和实现部分 .
 接口部分(.h文件)主要给外界提供可以访问的接口,声明的类的特性以及行为.
 实现部分(.m)主要实现.h文件中声明的行为.
 
 接口部分定义: 
 @interface 开头 + 类名   : (冒号表示继承,说明给类有父类.)父类名. @end结束.
 类的接口部分定义必须写在@interface 和@end之间.
 */
@interface Person : NSObject
{
    //对应描述一个类的特征.
    //实例变量(对应结构体中的结构体成员)
    //大括号中只能定义实例变量,并且实例变量只能定义在大括号中
   @public NSString *name;//姓名
   @public NSInteger age;//年龄
   @public NSString *gender;//性别
   @public CGFloat weight;//体重
}

//对应描述一个类的行为---方法
//void sayHi(); 方法名 eat:
- (void)sayHi;
//void eat(int money);
- (void)eat:(NSInteger)money;
//int max(int x,int y);//方法名 max:y:
- (NSInteger)max:(NSInteger)x y: (NSInteger)y;



@end
//定义studet类的部分接口部分
/**
 *  文件和类之间的关系,person.h和person.M是文件.student是类.
 一个文件中可以定义多个类,只要符合类的接口部分以及实现部分定义即可,通常一个文件定义一个类
 并且接口部分和实现部分也可以定义在同一个文件.
 */
@interface student : NSObject

{
    NSString *stuname;//姓名
    NSString *gender;//性别
    NSInteger age;//年龄
    NSInteger number;//学号
    CGFloat weight;//体重
    
}

@end
