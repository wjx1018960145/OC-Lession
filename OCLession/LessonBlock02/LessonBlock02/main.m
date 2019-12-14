//
//  main.m
//  LessonBlock02
//
//  Created by lanouhn on 14-10-22.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>

int minValue(int x, int y)
{
    return x < y ? x : y;
}
int maxValue(int x, int y)
{
    return x > y ? x : y;
}
void sayHi()
{
    printf("hell");
}
void (*p1)() = NULL;
//
void sellChaoqun(int money)
{
    if (money > 1) {
        printf("今晚归你");
    }else{
        printf("钱不够");
    }
}
void (*p2)(int) = NULL;
//无参数 有返回值s
int giveMoney()
{
    //return 之后,函数执行结束,return之后函数后的语句不会被执行
    
    return 10;
}
int (*p3)() = NULL;
//有参 有返回值
int sumValue(int x, int y)
{
    return x + y;
}
int (*p4)(int,int) = NULL;
//函数定义形式
/**
 *  1无参无返回值
  2 有参又返回值
  3 无参有返回值
  4 有参有返回值
 *
 *
 */
int b = 10;
int main(int argc, const char * argv[])
{
//    //d定义函数指针 指向maxvalue;
//   // int (*p)(int ,int) = NULL;
//    typedef int (*PFUN)(int,int);
//    
//     PFUN  p = maxValue;
//   int   max = p(4, 5);
//   
//    printf("%d",max);

    
    //block定义
    //block 本质就是匿名()函数
    //block 允许在函数中嵌套定义函数
    //定义bilock求两个数的最大值
//    int (^maxVlue1)(int,int) = ^int(int x, int y)
//    {
//        return x > y ? x : y;
//    };
//    
//    int (^minValue1)(int, int) = ^int(int x, int y){
//        return x < y ? x : y;
//    };
//    NSString  *(^strWithint)(int) = ^NSString *(int invale)
//    {
//        return [NSString stringWithFormat:@"%d",invale];
//    };
//    NSNumber *(^NUM)(CGFloat) = ^NSNumber *(CGFloat flodvale){
//        return @(flodvale);
//    };
    
    /**
     *  block 调用.
     block储存的匿名函数完整的实现,调用匿名函数时,block变量可以当做函数名
//     */
//   int max =   maxVlue1(4,5);
//    NSString *str = strWithint(4);
//    NSNumber *num = NUM(20);
//    
//    NSLog(@"%@",str);
//    printf("%d",max);
    //__block 的作用:告诉编译器,在block内部不要对变量添加counst修饰,可以修改变量a的值
    //当在block内部访问block外部时 全局变量,__block修饰,就可以修改变量的值
    //当block内部访问外部block变量时 只能读取,不能修改
   // __block int a = 10;
//    void (^test)() = ^(){
//        b += 20;
//        a += 20;
//        printf("%d %d",a,b);
//    };
//    test();

    NSMutableArray *arr = [NSMutableArray arrayWithObjects:@"aa",@"bb",@"cc",@"dd",@"JJ",@"qq", nil];
    //排序
    [arr sortUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        //1转换类型
        NSString *str1 = obj1;
        NSString *str2 = obj2;
        //2.字符串对象比较,将这结果返回
       return -[str1 compare:str2];
        
    }];
    
    NSLog(@"arr=%@", arr);
    return 0;
}

