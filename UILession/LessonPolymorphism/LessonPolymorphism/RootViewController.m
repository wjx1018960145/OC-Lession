//
//  RootViewController.m
//  LessonPolymorphism
//
//  Created by lanouhn on 14/11/3.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    UILabel *label  =[[UILabel alloc]init];
    label.tag  = 100;
    //
    [self.view addSubview:label];
    [label release];
    
    UIButton *butten = [UIButton buttonWithType:UIButtonTypeSystem];
    butten.tag = 101;
    //当把控件添加到父视图上时,只想把它当做视图使用
    //参数多态.一个类型的参数可以有多种形态
    [self.view addSubview:butten];
    [butten release];
    //返回值多态
    //只想根据tag值获取对应的视图
    UIButton *button1 = (UIButton *)[self.view viewWithTag:101];
     UILabel *label1  = (UILabel *)[self.view viewWithTag:100];
    
    
    
    //arr 虽叫对象,但本质是指针变量
    //父类有的东西 子类肯定有;子类有的东西 父类不一定有
    //父类型指针可以指向子类型对象
    //子类型指针不可以指向父类型指针
    
    //isMemberOfClass
    //isKindOfClass
    NSMutableDictionary *arr = [NSMutableDictionary dictionaryWithCapacity:1];
    //判断一个指定对象是否指定类的对象
    //OC中的集合是一个类簇的感念,不是一个具体的类
    //nsarry nsMutableArry 统一为nsarry家族
    //nsdictionary nsmutableDictionary统一为nsDictionary
    //
//    if ([arr isMemberOfClass:[NSDictionary class]]) {
//        NSLog(@"true");
//    }else{
//        NSLog(@"false");
//        
//        
//    }
//    [arr count];
    
    //NSArray *arr2 = [NSArray *]arr;
    //isMemberOfClass 只能判断指定对象是否是指定类的对象
    //isKindofClass 不仅能判断指定类的对象是否指定类的对象,也可以判断指定对象是否是指定子类的对象
    if ([label isKindOfClass:[UILabel class]]) {
        NSLog(@"1");
    }else{
        NSLog(@"0");
    }
    
    NSArray *arr1 = [NSMutableArray arrayWithCapacity:1];
    
    
    
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
