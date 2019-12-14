//
//  main.m
//  LessonNSString
//
//  Created by lanouhn on 14-10-9.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
//        
//        // insert code here...
//     
//        /**
//         *1.创建字符串对象
//         (1)使用初始化方法
//         (2)使用便利构造器
//        NSString
//         */
////        NSString *string = [[NSString alloc] initWithString:@"lanouhn"];
//        NSString *string1 = @"lanouhn";
//        //very important (给定一个格式串进行初始化)
//        NSString *str2 = [[NSString alloc] initWithFormat:@"lanouhn%@%d",string1,12];
//        
//        NSLog(@"%@",str2);
//        //如何将c语言字符串 转化为oc字符串对象.
//        NSString *str3 = [[NSString alloc] initWithUTF8String:"Frank"];
//        NSLog(@"str3=%@",str3);
//        //使用便利构造器
////        NSString *str4=[[NSString alloc] stringw];
////        NSLog(@"%@",str4);
//        /**
//         *  获取字符串长度
//         判断字符串是否是以自定字符串开始或结束
//         (1)是否以
//         搜索字符串范围
//         字符串截取
//         */
//        NSUInteger length=[str2 length];
//        NSLog(@"%ld",length);
//        NSString *str5 = @"http://www.baidu.com//lanou.png";
//        BOOL isPrefixx = [str5 hasPrefix:@"http"];
//       //是否以png结尾
//        BOOL isSufixx = [str5 hasSuffix:@"png"];
//        NSLog(@"%d %d",isPrefixx,isSufixx);
//        
//        //搜索字符串范围
//        /**
//         *  NSrang 结构体类型,结构体成员变量
//         location 查找到字符串的开始下标,
//         length 查找到字符串的长度,如果没有查到,返回值为0 可通过成s员变量判断是否查询成功.
//         */
//        NSRange rang=[str5 rangeOfString:@"www"];
//        //warning;
//        NSLog(@"%@",NSStringFromRange(rang));
//        
//        //字符串的截取
//        NSString *str6 = [[NSString alloc] initWithFormat:@"lanou is big company"];
//        
//        //(1)– substringFromIndex:从第五个开始去后面的
//        NSString *substring = [str6 substringFromIndex:5];
//        NSLog(@"%@",substring);
//       // (2)  substringWithRange:
//        NSString *subtring3 = [str6 substringWithRange:NSMakeRange(9, 3)];
//        NSLog(@"%@",subtring3);
//        // (3) – substringToIndex:从开始去到第五个
//        NSString *substring1=[str6 substringToIndex:5];
//        NSLog(@"%@",substring1);
//        //大小写转换;
//        //全部大写
//        NSString *str7=[str6 uppercaseString];
//        NSLog(@"%@",str7);
//        //全部小写
//        NSString *str8 = [str7 lowercaseString];
//        NSLog(@"%@",str8);
//        //单词首字母大写
//        NSString *str9 = [str8 capitalizedString];
//        NSLog(@"str9=%@",str9);
//        //字符串拼接
//        NSString *str10 = [str9 stringByAppendingString:@" and is very success!"];
//        NSString *str13 = [str9 stringByAppendingFormat:@" and is very success"];
//        NSLog(@"%@ %@",str10,str13);
//        //z字符串替换 全部替换
//        NSString *str11 = [str10 stringByReplacingOccurrencesOfString:str10 withString:@"frank is man"];
//        NSLog(@"str11=%@",str11);
//        NSString *str14 = [str13 stringByReplacingOccurrencesOfString:@"very" withString:@"good"];
//        NSLog(@"str14=%@",str14);
//        //
//        NSString *str12 = [str11 stringByReplacingCharactersInRange:NSMakeRange(0, 5) withString:@"wangjunxin"];
//        NSLog(@"%@",str12);
//        //字符串比较
//        NSComparisonResult str15 = [str12 compare:@"wangz"];
//        NSLog(@"%ld",str15);
//        //比较两个字符串是否相等.
//        BOOL isEqual = [@"aa" isEqualToString:@"bb"];
//        NSLog(@"%d",isEqual);
//        //字符串与数值转换
//        //
//        NSString *str16 = @"12";
//        float vale = [str16 floatValue];
//        NSLog(@"%f",vale);
//        
//        NSString *image=@"123.jpn";
//        BOOL has = [image hasSuffix:@".png"];
//        if (!has) {
//            NSString *image1=[image stringByReplacingOccurrencesOfString:@".jpn" withString:@".jpg"];
//            NSLog(@"%@",image1);
//        }
    //
        /**
         *  NSMutableString 是你string的子类,只是比nsstring 多了对原有的字符串增删改的操作. 
         //
         */
        //创建字符串对象
        //NSMutableString *str = [[NSMutableString alloc] init];
       
        
        //初始化方法
        //便利构造器
        NSMutableString *str1 = [[NSMutableString alloc] initWithFormat:@"lanou"];
        
        NSLog(@"%@",str1);
        //插入字符串
        [str1 insertString:@"Duck" atIndex:5];
         NSLog(@"%@",str1);
        //修改字符串
        //(1)拼接字符串
        [str1 appendFormat:@"henan%d",12];
        NSLog(@"%@",str1);
        //(2)替换操作 henan -- beijing
//        [str1 replaceCharactersInRange:NSMakeRange(9, 5) withString:@"beijing"];
//        NSLog(@"%@",str1);
//        [str1 replaceOccurrencesOfString:@"henna" withString:@"beijing" options:NSCaseInsensitiveSearch range:NSMakeRange(0, [str1 length])];
//        NSLog(@"%@",str1);
        //使用从父类继承过来的字符串方法
//       NSString *str2 =  [str1 stringByReplacingOccurrencesOfString:@"henan" withString:@"beijing"];
//        NSLog(@"%@",str2);
        //删除字符串
        [str1 deleteCharactersInRange:NSMakeRange(5, 4)];
        NSLog(@"%@",str1);
        //重置字符串 重置Frank;
        [str1 setString:@"Frank"];
        NSLog(@"%@",str1);
        //
        NSMutableString * imagename = [NSMutableString stringWithFormat:@"http://www.lanou.com//www.lanou.com/lanou.png" ];
         BOOL ishasuffix= [imagename hasSuffix:@"png"];
        if (ishasuffix) {
            [imagename replaceCharactersInRange:NSMakeRange([imagename length] -3, 3) withString:@"jpg"];
            NSLog(@"%@",imagename);
        }
        [imagename appendString:@".jpg"];
        NSLog(@"%@",imagename);
        //数值类
        
        
        /**
         *  1将基本类型数据转化为nsnumber对象
            2 将 nsnumber 对象转化为基本类型.
//         */
        NSNumber *nu1 = [NSNumber numberWithBool:YES];//bool到NSnumber
        NSNumber *nu6 = @YES;
        NSNumber *nu2 = [NSNumber numberWithUnsignedInt:12];//整形转化为NSNumber
        NSNumber *num5 = @12;
        NSNumber *nu3 = [NSNumber numberWithUnsignedShort:23];//short 转化为nsnumber
        NSNumber *nu7 = @23;
        
        NSNumber *nu4 = [NSNumber numberWithFloat:12.3];//浮点型转化为number
        int a = 10;
//        NSNumber *num = [NSNumber numberWithInt:a];
        NSNumber *num2 = @(a);
        NSLog(@"%@" ,num2);
        //将 nsnumber 对象转化为基本类型.
        
        int vale1 = [num2 intValue];
        float vale2 = [num2 floatValue];
        char vale3 = [num2 charValue];
        BOOL vale4 = [num2 boolValue];
       //3 比较
        NSComparisonResult nr = [num2 compare: num5];
        NSLog(@"%ld",nr);
        
        BOOL isequst = [nu2 isEqualToNumber:num5];
        NSLog(@"%hhd",isequst);
        
        
    }
    return 0;
}

