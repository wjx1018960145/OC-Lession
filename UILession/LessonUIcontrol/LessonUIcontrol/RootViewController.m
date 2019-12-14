//
//  RootViewController.m
//  LessonUIcontrol
//
//  Created by lanouhn on 14/10/31.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    //uisegentedControl ios中的分段控件,由多个分段组成,每一段相当于一个buton,切换分段,对应着切换显示内容
    //1创建对象
    NSArray *arr = @[@"付费",@"免费",@"畅销",@"倒贴"];
    UISegmentedControl  *segment = [[UISegmentedControl alloc]initWithItems:arr];
    //配置属性
    segment.frame = CGRectMake(30, 40, 260, 40);
    //设置默认选中分段
    segment.selectedSegmentIndex = 0;
    //渲染UISegmentedControl颜色
    segment.tintColor = [UIColor orangeColor];
    //设置某个选项卡宽度
    [segment setWidth:80 forSegmentAtIndex:3];
    //设置选中之后是否处于选中状态
    //为UISegmentedControl添加响应事件
    [segment addTarget:self action:@selector(hangSegmentedControl:) forControlEvents:UIControlEventValueChanged];
    //设置分段控件的样式
  //  segment.segmentedControlStyle = UISegmentedControlStyleBar;
    
    segment.momentary = NO;
    //添加到视图
    [self.view addSubview:segment];
    //释放所有权
    [segment release];
    
    
    //滑块控件 ios中的滑块控件,滑竿上携带有一定的范围
    
    UIView *view = [[UIView alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
    view.backgroundColor = [UIColor blackColor];
    view.tag = 100;
    [self.view addSubview:view];
    [view release];
    
    
    UISlider *slider = [[UISlider alloc]initWithFrame:CGRectMake(30, 200, 260, 40)];
    //slider.backgroundColor = [UIColor yellowColor];
    
    //改变滑竿划过颜色
    slider.minimumTrackTintColor = [UIColor redColor];
    slider.maximumTrackTintColor = [UIColor grayColor];
    //设置滑块的为图片
    [slider setThumbImage:[UIImage imageNamed:@"player_redbutton_down.png"] forState:UIControlStateNormal];
    
    //设置sliser范围
    slider.minimumValue = 0;
    slider.maximumValue = 1.0;
    //设置slider 当前值
    slider.value = 0.0;
    
    //添加滑块的响应事件
    [slider addTarget:self action:@selector(handSlider:) forControlEvents:UIControlEventValueChanged];
    //设置是否连续触发滑块事件
    slider.continuous = YES;
    //设置slider竖直方向
    slider.transform = CGAffineTransformMakeRotation(-M_PI_2);
    [self.view addSubview:slider];
    [slider release];
    // Do any additional setup after loading the view.
}

- (void)handSlider:(UISlider *)slider{
    NSLog(@"%f",slider.value);
    UIView *view1 = [self.view viewWithTag:100];
    
    view1.alpha = 1-slider.value;
}
- (void)hangSegmentedControl:(UISegmentedControl *)select{
    NSLog(@"%ld",(long)select.selectedSegmentIndex);
    
    switch (select.selectedSegmentIndex) {
        case 0:
            NSLog(@"%@",[select titleForSegmentAtIndex:0]);
            break;
            case 1:
            [select setTitle:@"不要钱" forSegmentAtIndex:1];
            
            break;
            case 2:
            [select insertSegmentWithTitle:@"Frank" atIndex:2 animated:YES];
            break;
            case 3:
            //移除分段必须保证移除之后的分段个数和大于或等于初始化的分段个数一致
            [select removeSegmentAtIndex:0 animated:YES];
            
            break;
        default:
            break;
    }
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
