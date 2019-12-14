//
//  main.m
//  LessonBlock
//
//  Created by lanouhn on 14-10-15.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "test.h"
int (^block1)(int x, int y) = ^(int x,int y)
{
    return x > y ? x :y;
};
int (^block2)(int x, int y) = ^(int x, int y)
{
    return x < y ? x : y;
};

int (^block3)(int x, int y) = ^(int x, int y)
{
    return x  + y;
};
typedef int (^block4)(int x, int y);
int getValue(int x, int y,block4 bt)
{
    return bt(x,y);
};
int b=2;

//void test(
//          static void (^block6)(int) = ^(int i)
//          {
//              if (i>0) {
//                  NSLog(@"%d",i);
//                  block6(i - 1);
//              }
//          } ;         );
int main(int argc, const char * argv[])
{

    @autoreleasepool {
//        //
//        int m = 7;
//        int (^myblock)(int)=^(int sum){
//        
//            return sum + m;
//        };
//        
//        NSLog(@"%d",myblock(2));
//        
//        int (^block1)(NSString *)=^(NSString *name)
//        {
//           
//            return [name intValue];
//        };
//        int number = block1(@"23");
//        NSLog(@"%d",number);
//        int number1 = getValue(2, 3, block2);
//        NSLog(@"%d",number1);

//        __block int a = 3;
//        void (^block5)() = ^()
//        {    b++;
//            int c=a*4*b;
//            
//            NSLog(@"%d",c);
//        };
//        block5();
//        
//
        //block的递归调用
        //代码块想要递归调用,代码块变量必须是全局变量或者是静态变量 这样在程序启动的时候代码块变量就初始化了，可以递归调用
//       static void (^block6)(int) = ^(int i)
//        {
//            if (i>0) {
//                NSLog(@"%d",i);
//                block6(i - 1);
//            }
//        };
//        block6(10);
//    }
        //动态block进行数组排序
//        NSArray *stringArray = [NSArray arrayWithObjects:@"abd", @"ab", @"abc",@"abc",@"abc",nil];
//        //比较string1和sring2
//        NSComparator sortBlock = ^(id string1,id string2)
//        {
//            return [string1 compare:string2];
//        };
//        NSMutableArray *sorAr = [stringArray sortedArrayUsingComparator:sortBlock];
//        NSLog(@"sort=%@",sorAr);

        //按学生姓名 年龄 学号 升序降序排序
        
        NSMutableArray *stu = [NSMutableArray arrayWithCapacity:1];
        test *tst= [test initWithName:@"ChaoQun" age:18 number:@"1203978"];
        test *tst1= [test initWithName:@"mingXing" age:28 number:@"120978"];
        test *tst2= [test initWithName:@"fengjie" age:28 number:@"10978"];
        test *tst3= [test initWithName:@"wangli" age:25 number:@"1078"];
        test *tst4= [test initWithName:@"Frank" age:24 number:@"11178"];
        test *tst5= [test initWithName:@"Frank" age:24 number:@"11178"];
        [stu addObject:tst];
        [stu addObject:tst1];
        [stu addObject:tst2];
        [stu addObject:tst3];
        [stu addObject:tst4];
        [stu addObject:tst5];
        NSLog(@"%@",stu);
        //按姓名
        [stu sortUsingComparator:^NSComparisonResult(id obj1, id obj2) {
            test *stu1 = obj1;
            test *stu2 = obj2;
            if ([stu1.name compare:stu2.name] > 0) {
                return NSOrderedDescending;
            }else if([stu1.name compare:stu2.name]==0){
                return NSOrderedSame;
            }else{
                return NSOrderedAscending;
            }
        }];
        [stu sortUsingComparator:^NSComparisonResult(id obj1, id obj2) {
            test *stu1 = obj1;
            test *stu2 = obj2;
            return [stu1.name compare:stu2.name]<0;
        }];
         NSLog(@"%@",stu);
        //按年龄
        [stu sortUsingComparator:^NSComparisonResult(id obj1, id obj2) {
            test *stu1 = obj1;
            test *stu2 = obj2;
            return stu1.age > stu2.age;
        }];
        NSLog(@"%@",stu);
        //按学号
        [stu sortUsingComparator:^NSComparisonResult(id obj1, id obj2) {
            test *stu1 = obj1;
            test *stu2 = obj2;
            if ([stu1.number compare:stu2.number] > 0) {
                return NSOrderedDescending;
            }else if([stu1.number compare:stu2.number]==0){
                return NSOrderedSame;
            }else{
                return NSOrderedAscending;
            }
        }];
    }
    return 0;
}

