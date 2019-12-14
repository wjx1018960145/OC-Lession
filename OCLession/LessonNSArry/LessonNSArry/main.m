//
//  main.m
//  LessonNSArry
//
//  Created by lanouhn on 14-10-10.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DB.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //数组 用来存储多个对象,并且对象类型不限制 数组是一个有序的集合 而且数组中的数据课可重复
        //不可变数组
        /**
         *  1创建对象
         初始化方法
         使用便利构造器
         多个元素之间通过逗号间隔
         nil 作为数组结束的标志,不能省略.
         */
//        NSArray *arr1 =------ [[NSArray alloc] initWithObjects:@"aa",nil,@"bb",@"cc", nil];
//        NSLog(@"%@,",arr1);
//        
//        NSArray *arr2 = [NSArray arrayWithObjects:@"aa",@"bb",@"cc",@"cc",@"cc",@"cc",@"bb",nil];
//         NSLog(@"%@,",arr2);
        NSArray *arr3 = @[@"aa",@"bb",@"cc"];
//        NSLog(@"%@",arr3);
//        //2 数组元素的个数
//        NSInteger count = [arr3 count];
//        NSLog(@"%ld",count); //获取数组元素
//        //(1)获取数组中第一个元素
////        NSString *object1 = [arr3 objectAtIndex:2];
////        NSLog(@"%@",object1);
//        NSString *object = [arr3 firstObject];
//        NSLog(@"%@",object);
//        //(2)获取数组中最后一个
//        NSString *object1 = [arr3 lastObject];
//        NSLog(@"%@",object1);
//        //(2)获取数组中第二个元素
//        NSString *object2 = [arr3 objectAtIndex:1];
//        NSLog(@"%@",object2);
        NSString *object = arr3[2];
        NSLog(@"%@",object);
//        //4. 查找对象
//        //1 查看数组中是否存在某一对象
//        BOOL isExist = [arr3 containsObject:@"dd"];
//        NSLog(@"%hhd",isExist);
//        //2查找某一元素对应的下标
//        NSInteger index = [arr3 indexOfObject:@"bb"];
//        NSLog(@"%ld",index);
//        //5 排序//只需要给出数组中的两个对象在比较时采用哪种方法
//        NSArray *orderArry = [arr2 sortedArrayUsingSelector:@selector(compare:)];//
//        NSLog(@"%@",orderArry);
        //对数组遍历
//        for (int i = 0; i < [arr3 count]; i++) {
//            NSLog(@"%@ ",[arr3 objectAtIndex:i]);
//        }

        //快速遍历
        /**
         *  type :集合中的元素. 可以存放多个元素
         object 对象名
         collection 集合
         statwment 语句 
         集合列举机制
         */
        for (NSString *element in arr3) {
            NSLog(@"%@",element);
        }
        
         //可变数组
        /**
         *1创建对象
         2 初始化方法
         3 便利构造器
         4
         */
        /**
         *1添加元素
         2移除元素
         3移除给定的元素
         4很据下标移除元素
         5移除所有元素
         6指定位置插入元素
         
         7交换指定位置上的元素
         
         8替换数组中的指定元素
         9对数组原数排序
         10重置数组
         */
//        NSMutableArray *nsmu=[NSMutableArray arrayWithObjects:@"aa",@"bb",@"cc",@"cc",@"cc",@"cc", nil];
//      // 替换数组中的指定元素
//        [nsmu replaceObjectAtIndex:1 withObject:@"dd"];
//        //对数组原数排序
//        [nsmu sortUsingSelector:@selector(compare:)];
//        NSLog(@"%@",nsmu);
////        for (NSString *element in nsmu) {
////            NSLog(@"%@",element);
////        }
//        
//        //重置数组
//        NSMutableArray *nsmu2 = [NSMutableArray arrayWithObjects:@"dd",@"ee",@"ff",nil];
//       // [nsmu setArray:nsmu2];
//        //[nsmu insertObjects:nsmu2 atIndexes:0];
//        NSLog(@"%@", nsmu);
//        
//        //*1添加元素
//        [nsmu addObject:@"qq"];
        
        //2移除元素
        
        //3移除给定的元素
      ////  [nsmu removeObject:@"bb"];
      //  NSLog(@"%@", nsmu);
        //4很据下标移除元素
        //[nsmu removeObjectAtIndex:3];
       // NSLog(@"%@", nsmu);
        //5移除所有元素
//        [nsmu removeAllObjects];
//        NSLog(@"%@", nsmu);
        //6指定位置插入元素
        //[nsmu insertObjects:@"GG" atIndexes:0];
        //交换指定位置上的元素
//        [nsmu exchangeObjectAtIndex:1 withObjectAtIndex:6];
//        NSLog(@"%@", nsmu);
        
        DB *db = [[DB alloc] init];
        db.createEditableCopyOfDatabaseIfNeeded;
        
    }
   
    
   
    return 0;
}

