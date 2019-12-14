//
//  FirstController.m
//  LessonFileMangager
//
//  Created by lanouhn on 14/11/14.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "FirstController.h"
#import "SecondController.h"
@interface FirstController ()

@end

@implementation FirstController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setLatouy];
    
}

- (void)setLatouy {
    UITextField *text = [[UITextField alloc]init];
    text.frame = CGRectMake(20, 150, 200, 30);
    text.backgroundColor = [UIColor whiteColor];
    //设置默认显示文字(当输入框内没有时)
   // text.placeholder = @"请输入30-29字符户名";
    //文字颜色 对齐方式
    text.textColor = [UIColor blackColor];
    text.textAlignment = NSTextAlignmentCenter;
    //显示文字
   // text.text = @"显示文字";
    //设置边框圆角
    text.borderStyle = UITextBorderStyleRoundedRect;
    //是否是密码模式
       //是否允许编辑
    text.enabled = YES;
    //开始编辑时清除输入框内容
    text.clearsOnBeginEditing = YES;
    //tag值
    text.tag = 100;
    //添加到父视图上
    [self.view addSubview: text];
    //释放所有权
    [text release];
    
    UITextField *text1 = [[UITextField alloc]init];
    text1.frame = CGRectMake(20, 200, 200, 30);
    text1.backgroundColor = [UIColor whiteColor];
    //设置默认显示文字(当输入框内没有时)
    //text1.placeholder = @"请输入30-29字符户名";
    //文字颜色 对齐方式
    text1.textColor = [UIColor blackColor];
    text1.textAlignment = NSTextAlignmentCenter;
    //显示文字
    //text1.text = @"显示文字";
    //设置边框圆角
    text1.borderStyle = UITextBorderStyleRoundedRect;
    //是否是密码模式
    //是否允许编辑
    text1.enabled = YES;
    //开始编辑时清除输入框内容
    text1.clearsOnBeginEditing = YES;
    //tag值
    text1.tag = 101;
    //添加到父视图上
    [self.view addSubview: text1];
    //释放所有权
    [text1 release];

    UIButton *btu = [UIButton buttonWithType:UIButtonTypeSystem];
    btu.frame = CGRectMake(20, 260, 60, 30);
    btu.layer.cornerRadius = 5;
    [btu setTitle:@"写入" forState:UIControlStateNormal];
    [btu addTarget:self action:@selector(handWri:) forControlEvents:UIControlEventTouchUpInside];
    
    btu.backgroundColor = [UIColor greenColor];
    [self.view addSubview:btu];
    
    UIButton *btu1 = [UIButton buttonWithType:UIButtonTypeSystem];
    btu1.frame = CGRectMake(100, 260, 60, 30);
    btu1.layer.cornerRadius = 5;
    [btu1 setTitle:@"读取" forState:UIControlStateNormal];
    [btu1 addTarget:self action:@selector(handRed:) forControlEvents:UIControlEventTouchUpInside];
    
    btu1.backgroundColor = [UIColor greenColor];
    [self.view addSubview:btu1];
    UIButton *btu2 = [UIButton buttonWithType:UIButtonTypeSystem];
    btu2.frame = CGRectMake(20, 380, 160, 30);
    btu2.layer.cornerRadius = 5;
    [btu2 setTitle:@"进入下一个页面" forState:UIControlStateNormal];
    [btu2 addTarget:self action:@selector(handpush:) forControlEvents:UIControlEventTouchUpInside];
    btu2.backgroundColor = [UIColor greenColor];
    [self.view addSubview:btu2];

}

- (void)handWri:(UIButton *)sender {
//    //字符串写入文件\
//    //获取第一个输入框的内容
 //    UITextField *tf = (UITextField *)[self.view viewWithTag:100];
//    NSString *content = tf.text;
//    //atomically 安全处理数据的读写 单独对一个文件操作
//    NSError *error = nil;
//    //写入时如果文件不存在会自动创建
//     NSString *str = [NSString stringWithContentsOfFile:[self getFilePath] encoding:NSUTF8StringEncoding error:nil];
//    NSString *newstr = [str stringByAppendingString:content];
//    BOOL isSucess = [newstr writeToFile:[self getFilePath] atomically:YES encoding:NSUTF8StringEncoding error:&error];
//    if (isSucess) {
//        NSLog(@"成功");
//    }else{
//        NSLog(@"失败");
//    }
    //数组写入到文件 创建两个对象
    UITextField *tf = (UITextField *)[self.view viewWithTag:100];
    UITextField *tf2 = (UITextField *)[self.view viewWithTag:101];
    NSString *str1 = tf.text;
    NSString *str2 = tf2.text;
//    NSArray *arry = @[str1, str2];
//    [arry writeToFile:[self getFilePath] atomically:YES];
    
    //字典写入文件
    NSDictionary *dic = @{@"tf1":str1, @"tf2":str2};
    [dic writeToFile:[self getFilePath] atomically:YES ];
}
- (void)handRed:(UIButton *)sender {
////    //获取两个输入框
    UITextField *text = (UITextField *)[self.view viewWithTag:100];
    UITextField *text1 = (UITextField *)[self.view viewWithTag:101];
////    //获取内容
////  //字符串从文件中读取文件
////    NSString *str = [NSString stringWithContentsOfFile:[self getFilePath] encoding:NSUTF8StringEncoding error:nil];
////    text1.text = str;
//    //数组从文件中读取数据
//    NSArray *arry = [NSArray arrayWithContentsOfFile:[self getFilePath]];
//    
//    text.text = [arry lastObject];
//    text1.text = [arry firstObject];
    //从字典中读取
    NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:[self getFilePath]];
    text.text = [dic objectForKey:@"tf2"];
    text1.text = [dic objectForKey:@"tf1"];
    

}
//获取文件路径
- (NSString *)getFilePath {
    //获取文件夹路径
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    //2拼接上文件路径
    NSString *newpath = [path stringByAppendingString:@"caoqun.txt"];
    return newpath;
    
}
- (void)handpush:(UIButton *)sender {
    SecondController *second = [[SecondController alloc] init];
    [self.navigationController pushViewController:second animated:YES];
    [second release];
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
