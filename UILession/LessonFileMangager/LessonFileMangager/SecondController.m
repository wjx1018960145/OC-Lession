//
//  SecondController.m
//  LessonFileMangager
//
//  Created by lanouhn on 14/11/14.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "SecondController.h"
#import "Person.h"
@interface SecondController ()

@end

@implementation SecondController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setLatouy];
    // Do any additional setup after loading the view.
}
- (void)setLatouy {
    UITextField *text = [[UITextField alloc]init];
    text.frame = CGRectMake(20, 150, 200, 30);
    text.backgroundColor = [UIColor whiteColor];
    //设置默认显示文字(当输入框内没有时)
    text.placeholder = @"请输入30-29字符户名";
    //文字颜色 对齐方式
    text.textColor = [UIColor blackColor];
    text.textAlignment = NSTextAlignmentCenter;
    //显示文字
    text.text = @"显示文字";
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
    text1.placeholder = @"请输入30-29字符户名";
    //文字颜色 对齐方式
    text1.textColor = [UIColor blackColor];
    text1.textAlignment = NSTextAlignmentCenter;
    //显示文字
    text1.text = @"显示文字";
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
    [btu setTitle:@"归档" forState:UIControlStateNormal];
    [btu addTarget:self action:@selector(handWri:) forControlEvents:UIControlEventTouchUpInside];
    
    btu.backgroundColor = [UIColor greenColor];
    [self.view addSubview:btu];
    
    UIButton *btu1 = [UIButton buttonWithType:UIButtonTypeSystem];
    btu1.frame = CGRectMake(100, 260, 60, 30);
    btu1.layer.cornerRadius = 5;
    [btu1 setTitle:@"反归档" forState:UIControlStateNormal];
    [btu1 addTarget:self action:@selector(handRed:) forControlEvents:UIControlEventTouchUpInside];
    
    btu1.backgroundColor = [UIColor greenColor];
    [self.view addSubview:btu1];
    
}
- (void)handWri:(UIButton *)sender {
    //创建对象
    Person *per = [[Person alloc] initWinthName:@"Frank" gender:@"man" age:12];
    NSMutableData *mData = [NSMutableData data];
    NSKeyedArchiver  *arch = [[NSKeyedArchiver alloc] initForWritingWithMutableData:mData];
    //归档
    [arch encodeObject:per forKey:@"chaoqun"];
    //3结束归档 结束归档之后 在归档 无效
    [arch finishEncoding];
    [arch release];
    [per release];
    //写入文件
    BOOL isSuccess = [mData writeToFile:[self getFilePath] atomically:YES];
    if (isSuccess) {
        NSLog(@"成功");
    }else{
        NSLog(@"");
    }
}
- (void)handRed:(UIButton *)sender {
    //从本地文件读取数据
    NSData *data = [NSData dataWithContentsOfFile:[self getFilePath]];
    //创建反归档对象
    NSKeyedUnarchiver *unarch = [[NSKeyedUnarchiver alloc] initForReadingWithData:data];
    //反归档
   Person *per = [unarch decodeObjectForKey:@"chaoqun"];
    [unarch finishDecoding];
    [unarch release];
    //获取输入框
    UITextField *tf1 = (UITextField *)[self.view viewWithTag:100];
    UITextField *tf2 = (UITextField *)[self.view viewWithTag:101];
    tf1.text = per.name;
    tf2.text = per.gender;
}

- (NSString *)getFilePath {
    //获取文件夹路径
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    NSString *newpath = [path stringByAppendingString:@"per.data"];
    return newpath;
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
