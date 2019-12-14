//
//  RootViewController.m
//  LessonGCD
//
//  Created by lanouhn on 14/11/24.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()
@property (retain, nonatomic) IBOutlet UIButton *btn;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
  //串行队列 线程同步
- (IBAction)handleSysncQueue:(UIButton *)sender {
    //1.获取队列
    //1.1获取系统创建好的串行队列,主队列,在主线程中执行
    
//    dispatch_queue_t queue = dispatch_get_main_queue();
    //1,2自己创建串行队列 在子线程中执行
    dispatch_queue_t queue  = dispatch_queue_create("com.lanou.cn", DISPATCH_QUEUE_SERIAL);//SERIAL串行
    //往队列中添加任务
    dispatch_async(queue, ^{
       
        NSLog(@"任务一当前线程%@", [NSThread currentThread]);
    });
    dispatch_async(queue, ^{
        NSLog(@"任务2当前线程%@", [NSThread currentThread]);
    });
    dispatch_async(queue, ^{
        NSLog(@"任务3%@", [NSThread currentThread]);
    });
    dispatch_async(queue, ^{
        NSLog(@"任务4%@", [NSThread currentThread]);
    });
    
}
//并行队列 线程并发
- (IBAction)handleConcurrentQueue:(UIButton *)sender {
    //获取并行队列
    //(1)获取系统创建好的队列
//    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    //(2)自己创建队列
    dispatch_queue_t queue = dispatch_queue_create("com.lanou.cn", DISPATCH_QUEUE_CONCURRENT);
    //添加任务到队列 //如果是添加的同步任务.任务同步在主线程执行
    dispatch_async(queue, ^{

        NSLog(@"任务1%@",[NSThread currentThread]);
    });
    dispatch_async(queue, ^{
        
        NSLog(@"任务2%@",[NSThread currentThread]);
    });

    dispatch_async(queue, ^{
        
        NSLog(@"任务3%@",[NSThread currentThread]);
    });

    dispatch_async(queue, ^{
        
        NSLog(@"任务4%@",[NSThread currentThread]);
    });
}
//分组任务 类似加一个缓存器
- (IBAction)handleGroup:(UIButton *)sender {
    //获取并发队列
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_group_t group = dispatch_group_create();
    //向队列中添加分组任务
    dispatch_group_notify(group, queue, ^{
        
        NSLog(@"请求0-1M数据,当前线程%@",[NSThread currentThread]);
    });
    dispatch_group_notify(group, queue, ^{
        
        NSLog(@"请求2-3M数据,当前线程%@",[NSThread currentThread]);
    });
    dispatch_group_notify(group, queue, ^{
        
        NSLog(@"请求4-5M数据,当前线程%@",[NSThread currentThread]);
    });
    //所有数据任务完成后出发
    dispatch_group_notify(group, queue, ^{
        //拼接分段数据
        NSLog(@"");
    });
}
//整个程序运行期间只执行一次
- (IBAction)handleOnce:(UIButton *)sender {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        //存储只会执行一次的代码,比如执行单例对象的创建
    });
}
//障碍
- (IBAction)handleDealy:(UIButton *)sender {
    //获取并发队列
    //如果要加障碍任务,自己创建障碍
//    dispatch_queue_t  queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_queue_t queue = dispatch_queue_create("com.lanou.cn", DISPATCH_QUEUE_CONCURRENT);
    dispatch_async(queue, ^{
        
        NSLog(@"A写入%@",[NSThread currentThread]);
    });
    dispatch_async(queue, ^{
        
        NSLog(@"B写入%@",[NSThread currentThread]);
    });
    dispatch_async(queue, ^{
        
        NSLog(@"C写入%@",[NSThread currentThread]);
    });
    dispatch_barrier_async(queue, ^{
        NSLog(@"障碍");
    });
    dispatch_async(queue, ^{
        
        NSLog(@"D写入%@",[NSThread currentThread]);
    });
    dispatch_async(queue, ^{
        
        NSLog(@"E写入%@",[NSThread currentThread]);
    });dispatch_async(queue, ^{
        
        NSLog(@"F写入%@",[NSThread currentThread]);
    });
    
 }
//延迟
- (IBAction)hnadleApply:(UIButton *)sender {
    double second = 10.0;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(second * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        //存放延迟10秒后执行
        NSLog(@"DUck id duck");
    });
}
//重复
- (IBAction)handrepetition:(UIButton *)sender {
    //如果每次只执行一个任务,则在主线程中执行,如果并发多个任务,除主线程外还分配给其他的子线程
    dispatch_queue_t queue  = dispatch_queue_create("com.lanou.cn", DISPATCH_QUEUE_SERIAL);
    NSArray *arr = @[@"AA",@"BB",@"CC",@"DD",@"EE",@"FF",@"HH"];
   dispatch_apply([arr count], queue, ^(size_t index) {
       
       NSLog(@"任务%lu  %@",index+1,[NSThread currentThread]);
       NSLog(@"%@",arr[index]);
   });
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

- (void)dealloc {
    [_btn release];
    [super dealloc];
}
@end
