//
//  RootViewController.m
//  LessonCusteomnavigationBar
//
//  Created by lanouhn on 14/11/6.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "RootViewController.h"
#import "SecondViewController.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    UIButton *btu = [UIButton buttonWithType:UIButtonTypeSystem];
    btu.frame = CGRectMake(20, 110, 200, 30);
    btu.layer.cornerRadius = 5;
    [btu setTitle:@"进入下面" forState:UIControlStateNormal];
    [btu addTarget:self action:@selector(push:) forControlEvents:UIControlEventTouchUpInside];
    
    btu.backgroundColor = [UIColor greenColor];
    [self.view addSubview:btu];
    [self cuseomizeNavigationBarContent];
    //修改导航条的渲染颜色
    self.navigationController.navigationBar.tintColor = [UIColor redColor];
    
    
}
 //为第一个界面定制导航条内容
- (void)cuseomizeNavigationBarContent {
    //navigationItem 配置导航条内容
    //1.设置标题
    self.navigationItem.title = @"第一页";
    //2.修改导航条title文字颜色我文字大小
    NSDictionary *dic = @{NSForegroundColorAttributeName:[UIColor redColor],NSFontAttributeName:[UIFont boldSystemFontOfSize:20]};
    self.navigationController.navigationBar.titleTextAttributes = dic;
    //3.指定titleView
    UISegmentedControl *segment = [[UISegmentedControl alloc] initWithItems:@[@"搞基",@"社交"]];
    self.navigationItem.titleView = segment;
    [segment release];
    
    //布局ImageViewer
    [self lauoytImageView];
    
    
    
    //4.设置导航条leftItem
    UIBarButtonItem *ubbl = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(handAction:)];
    
    self.navigationItem.leftBarButtonItem = ubbl;
    
    [ubbl release];
    //设置右侧reightItem
    UIBarButtonItem *ubbr = [[UIBarButtonItem alloc] initWithTitle:@"编辑" style:UIBarButtonItemStylePlain target:self action:@selector(handIdem:)];
    
    self.navigationItem.rightBarButtonItem = ubbr;
    
    
}
- (void)handIdem:(UIButton *)item {
    NSLog(@"13434");
}

- (void)handAction:(UIButton *)item {
    NSLog(@"12");
}
- (void)push:(UIButton *)sender {
    SecondViewController *secon = [[SecondViewController alloc] init];
    
    [self.navigationController pushViewController:secon animated:YES];
    [secon release];
}


- (void)lauoytImageView {
    //imageName :创建的对象 图片会在内存中存储一份,占用内存空间
    //经常使用的图片,使用该方法创建对象 比如图标
    
    //对于列表界面的图片加载,使用以下方法.
    //指定图片路径
    
    UIImage *image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"iphone" ofType:@"png"]];
    
    
   // UIImage *image = [UIImage imageNamed:@"iphone"];
   //让ImageViewer播放一组动态
    NSMutableArray *arr = [NSMutableArray arrayWithCapacity:22];
    for (int i = 1; i <= 22; i++) {
        UIImage *zombieimage = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"Zombie%d",i] ofType:@"tiff"]];
        [arr addObject:zombieimage];
    }
    
    UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake(20, 150, 280, 400)];
    imageview.backgroundColor = [UIColor magentaColor];
    imageview.image = image;
    //设置能播放一组动态图片
    imageview.animationDuration = 0.4;
    imageview.animationImages = arr;
    //设置图片切换次数
    imageview.animationRepeatCount = 10;
    [self.view addSubview:imageview];
    [imageview release];
    
    //开始动画
    [imageview startAnimating];
    //结束动画
   // [imageview stopAnimating];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    if ([self isViewLoaded]&&[self.view window]) {
        self.view = nil;
    }

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
