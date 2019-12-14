//
//  main.m
//  LessonCollection
//
//  Created by lanouhn on 14-10-13.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Teacher.h"//;
#import "Student/Student.h"
#import "Contact/Contact.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
//        Teacher *tea = [[Teacher alloc] init];
//        Student *stu = [[Student alloc] initWithName:@"wangli" gender:@"男" age:12];
//       
//        
//        [tea addStu:stu];
      
        //字典(用来储存具有一一对应关系的数据,字典中的每一个元素都是一对键值对(key-balue-pair))
        //字典存储特点 1无序 2key是唯一的 一个key 只能对应一个valeue 一个value只能对应对个key
        //不可变的字典
        //1 创建对象
        //(1)初始化方法
//        NSDictionary *dic = [[NSDictionary alloc] initWithObjectsAndKeys:@"wangli", @"name", @"女", @"gender",@12, @"age", nil];
//        NSLog(@"%@",dic);
//        
//        //(2)便利构造器
//        NSDictionary *dic2 = [NSDictionary dictionaryWithObjectsAndKeys:@"wangli", @"name", @"女", @"gender", @12, @"age", nil];
//         NSLog(@"%@",dic2);
//        //2.字典的个数
//       NSInteger count= [dic2 count];
//        NSLog(@"%ld",count);
//        //3.获取所有的key.
//        NSArray *arry = [dic2 allKeys];
//        NSLog(@"%@",arry);
//        //4.获取所有的value
//        NSArray *arry1 = [dic2 allValues];
//        NSLog(@"%@",arry1);
//        //5.根据key获取value
//        //获取nsnumber对象转化为基本数据类型.-
//        CGFloat num = [[dic2 objectForKey:@"age"] floatValue];
//        NSLog(@"%f",num);
//        //6.z字典快速便利(快速枚举)
//        //对字典便利,便利出得是字典中的key
//        for (NSString *arry in dic2) {
//            //根据key获取value
//            NSString *vale= [dic2 objectForKey:arry];
//            NSLog(@"%@ %@",arry,vale);
//        }
//        //可变字典
//        //1创建对象
//         NSMutableDictionary *Diic1 = [[NSMutableDictionary alloc] initWithCapacity:1];
//        
//        //初始化
//        //遍历构造器.
//        [NSMutableDictionary dictionaryWithCapacity:1];
//        //2.字典中增加元素
//        [Diic1 setObject:@"可变的" forKey:@"nutable"];
//       
//        [Diic1 setObject:@"不可变" forKey:@"immmutable"];
//        
//        //修改key对应的value
//        [Diic1 setObject:@"Duck" forKey:@"nutable1"];
//        
//        
//        //4.移除元素(移除mutable条目)
//        [Diic1 removeObjectForKey:@"nutable"];
//        [Diic1 setObject:@"Duck2" forKey:@"mutable2"];
//        [Diic1 removeAllObjects];
//        NSLog(@"%@",Diic1);
//        
//        
//        //集合
//        //不可变集合
//        //1创建对象(初始化方法)
//        NSSet *nsset1 = [[NSSet alloc] initWithObjects:@"aa",@"bb",@"cc",@"bb",@"cc", nil];
//        
//        //2集合个数
//        NSInteger count1 = [nsset1 count];
//        //3.获取元素
//        NSString *elements1 = [nsset1 anyObject];
//        NSString *elements2 = [nsset1 anyObject];
//        NSString *elements3 = [nsset1 anyObject];
//        NSString *elements4 = [nsset1 anyObject];
//        NSString *elements5 = [nsset1 anyObject];
//        NSString *elements6 = [nsset1 anyObject];
//        NSString *elements7 = [nsset1 anyObject];
//        NSLog(@"%ld %@ %@ %@ %@ %@ %@ %@ %@",(long)count1,nsset1,elements1,elements2,elements3,elements4,elements5,elements6,elements7);
//        //4.快速遍历
//        for (NSString *set in nsset1) {
//            NSLog(@"%@",set);
//        }
//        
//        //可变集合
//        NSMutableSet *set1 = [NSMutableSet setWithCapacity:1];
//        [set1 addObject:@"aa"];
//        
//        //移除一个元素
//        [set1 removeAllObjects];
//        
//        NSLog(@"%@",set1);
//        //计数集合
//        NSCountedSet *cset = [NSCountedSet setWithObjects:@"aa",@"bb",@"cc",@"cc",@"aa", nil];
//        //获取元素出现的次数.
//#warning 当自定义类时 不可以继承容器类 (比如nsstring nsNutableString nsArry nsMutableArry nsDictionry nsMutableDictionry nsSet nsMutableSet)因为这些类不是一个单独的类簇.
//        NSInteger num2 = [cset countForObject:@"aa"];
//        NSInteger num1 = [cset countForObject:@"cc"];
//        
//        NSLog(@"%ld %ld",num2,num1);
//        
//        //字面量
//        //1.快熟将c语言常量字符串转化为oc的常量字符串
//        NSString *str = @"asd";
//        //2 基本数据类快速转化为nsnumber类型
//        //1)常量
//        NSNumber *num3 = @12;
//        //2)变量
//        int a= 20;
//        NSNumber *num4 = @(a);
//        //3.快熟创建不可变的数组对象
//        NSArray *arr=@[@"aa",@"bb"];
//        //快速取出数组中的元素
//          arr[1];
//        //5.快速创建不可变的字典对象
//        NSDictionary *dic3 = @{@"name":@"wangli",@"age":@16};
//        //6.快速根据key获取value
//        NSString *name = dic3[@"anme"];
        
        //总结:
        //nsAyyy nsDictiony,nsSet 具有的初始化方法(arryWithObjects)
        //(nsArry nsSet)initWithObjects:(setWithObjects)
        //(nsDictionry) initWithObjectsAndKeys:(dictionryWithObjectsAndKeys)
        
        //nsMutableArry nsMutableDictionry nsMutableSet的初始化方法
        //(nsMutableArry)     initWithCapacity (arryWithcapacity)
        //(nsMutableDictionry)initWithCapacity (dictionryWithcapacity)
        //(nsMutableSet)      initWithCapacity (setWithcapacity)
        
        //数组 字典 集合求个数 统一使用count
        //快速遍历总结
        //数组:遍历数组最中的每一个元素
        //字典:遍历字典中每一个key
        //集合:遍历集中的每一个元素
        Contact *con = [[Contact alloc] init];
        [con addcontact:@"Wang" gender:@"女" phoneNumber:1234 address:@"花园路" groupName:@"家人" age:10];
        [con addcontact:@"Wang" gender:@"女" phoneNumber:1234 address:@"花园路" groupName:@"家人" age:8];
        [con addcontact:@"Wang" gender:@"女" phoneNumber:1234 address:@"花园路" groupName:@"家人" age:17];
        [con addcontact:@"Cang" gender:@"男" phoneNumber:1234 address:@"花园路" groupName:@"家人" age:6];
        [con addcontact:@"Rang" gender:@"男" phoneNumber:1234 address:@"花园路" groupName:@"家人" age:5];
        [con addcontact:@"Gbng" gender:@"女" phoneNumber:1234 address:@"花园路" groupName:@"家人" age:3];
        [con addcontact:@"Gdng" gender:@"女" phoneNumber:1234 address:@"花园路" groupName:@"家人" age:2];
        [con addcontact:@"Gcng" gender:@"女" phoneNumber:12345 address:@"花园路" groupName:@"家人" age:1];
        BOOL add= [con addcontact:@"Wang" gender:@"女" phoneNumber:1234 address:@"花园路" groupName:@"家人" age:123];
        if (add) {
            NSLog(@"添加成功");
            
        }else{
            NSLog(@"添加失败!");
        }
      //  [con deleter:@"Wang"];
        [con showAllDisGender:@"女"];
        [con showALL];
       
    
        NSLog(@"\n");
        
        [con showDisName:@"Rang"];
        NSLog(@"\n");
        [con select:12345];
    };
//    //定义13个人 3个人一组
//    
//    NSArray *Arry = @[@1,@2,@3,@4,@5,@6,@7,@8,@9,@10,@11,@12,@13];
//    NSMutableArray *bgarry = [[NSMutableArray alloc] initWithCapacity:1];
//    for (int i=0; i<[Arry count]; i++) {
//        if (0==i%3) {
//            NSMutableArray *smlArry = [[NSMutableArray alloc]initWithCapacity:1];
//            [bgarry addObject:smlArry];
//            
//        }
//        [[bgarry lastObject] addObject:Arry[i]];
//    }
//    
//    NSLog(@"%@",bgarry);

    //13个人 3人一组
//    NSArray *Arry = @[@1,@2,@3,@4,@5,@6,@7,@8,@9,@10,@11,@12,@13];
//    NSMutableArray *bigArry = [NSMutableArray arrayWithCapacity:1];
//    for (int i=0; i<[Arry count]; i++) {
//        if (i%3==0) {
//            NSMutableArray *smlarry = [NSMutableArray arrayWithCapacity:1];
//            [bigArry addObject:smlarry];
//        }
//        [[bigArry lastObject]addObject:Arry[i]];
//        
//    }
//    NSLog(@"%@",bigArry);
    
    
//    NSArray *arry = @[@1,@2,@3,@4,@5,@6,@7,@8,@9,@10,@11,@12,@13];
//    NSMutableArray *bigArry= [NSMutableArray arrayWithCapacity:1];
//    for (int i = 0; i < [arry count]; i++) {
//        if (i % 3 == 0) {
//            NSMutableArray *smlArry = [NSMutableArray arrayWithCapacity:1];
//            [bigArry addObject:smlArry];
//            
//        }
//        [[bigArry lastObject]addObject:arry[i]];
//    }
//    NSLog(@"%@",bigArry);
    
    
    
    return 0;
}

