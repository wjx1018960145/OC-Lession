//
//  RootViewController.m
//  LessonUICollectionView
//
//  Created by lanouhn on 14/11/25.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>
@property (nonatomic, retain) NSArray *arry;//存储连接
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   self.arry = [NSArray  arrayWithObjects:@"http://c.hiphotos.baidu.com/image/w%3D2048/sign=319964baa964034f0fcdc5069bfb7831/060828381f30e924c2fb36564e086e061d95f77e.jpg",@"http://b.hiphotos.baidu.com/image/w%3D2048/sign=f8539502b119ebc4c0787199b61ecefc/6f061d950a7b0208fa96958660d9f2d3572cc87e.jpg",@"http://c.hiphotos.baidu.com/image/w%3D2048/sign=fdaa6e1799504fc2a25fb705d1e5e611/d058ccbf6c81800acb5c6b11b33533fa828b4770.jpg",@"http://d.hiphotos.baidu.com/image/w%3D2048/sign=a2abd2c080025aafd33279cbcfd5aa64/8601a18b87d6277fed97a6382a381f30e924fc2d.jpg",@"http://a.hiphotos.baidu.com/image/w%3D2048/sign=99df4a68b119ebc4c0787199b61ecefc/6f061d950a7b02089b1a4aec60d9f2d3562cc8e8.jpg",@"http://f.hiphotos.baidu.com/image/w%3D2048/sign=67cecb3b6f224f4a579974133dcf9152/3bf33a87e950352a136998155143fbf2b2118ba7.jpg",@"http://c.hiphotos.baidu.com/image/w%3D2048/sign=319964baa964034f0fcdc5069bfb7831/060828381f30e924c2fb36564e086e061d95f77e.jpg",@"http://b.hiphotos.baidu.com/image/w%3D2048/sign=f8539502b119ebc4c0787199b61ecefc/6f061d950a7b0208fa96958660d9f2d3572cc87e.jpg",@"http://c.hiphotos.baidu.com/image/w%3D2048/sign=fdaa6e1799504fc2a25fb705d1e5e611/d058ccbf6c81800acb5c6b11b33533fa828b4770.jpg",@"http://d.hiphotos.baidu.com/image/w%3D2048/sign=a2abd2c080025aafd33279cbcfd5aa64/8601a18b87d6277fed97a6382a381f30e924fc2d.jpg",@"http://a.hiphotos.baidu.com/image/w%3D2048/sign=99df4a68b119ebc4c0787199b61ecefc/6f061d950a7b02089b1a4aec60d9f2d3562cc8e8.jpg",@"http://f.hiphotos.baidu.com/image/w%3D2048/sign=67cecb3b6f224f4a579974133dcf9152/3bf33a87e950352a136998155143fbf2b2118ba7.jpg",@"http://c.hiphotos.baidu.com/image/w%3D2048/sign=319964baa964034f0fcdc5069bfb7831/060828381f30e924c2fb36564e086e061d95f77e.jpg",@"http://b.hiphotos.baidu.com/image/w%3D2048/sign=f8539502b119ebc4c0787199b61ecefc/6f061d950a7b0208fa96958660d9f2d3572cc87e.jpg",@"http://c.hiphotos.baidu.com/image/w%3D2048/sign=fdaa6e1799504fc2a25fb705d1e5e611/d058ccbf6c81800acb5c6b11b33533fa828b4770.jpg",@"http://d.hiphotos.baidu.com/image/w%3D2048/sign=a2abd2c080025aafd33279cbcfd5aa64/8601a18b87d6277fed97a6382a381f30e924fc2d.jpg",@"http://a.hiphotos.baidu.com/image/w%3D2048/sign=99df4a68b119ebc4c0787199b61ecefc/6f061d950a7b02089b1a4aec60d9f2d3562cc8e8.jpg",@"http://f.hiphotos.baidu.com/image/w%3D2048/sign=67cecb3b6f224f4a579974133dcf9152/3bf33a87e950352a136998155143fbf2b2118ba7.jpg",@"http://c.hiphotos.baidu.com/image/w%3D2048/sign=319964baa964034f0fcdc5069bfb7831/060828381f30e924c2fb36564e086e061d95f77e.jpg",@"http://b.hiphotos.baidu.com/image/w%3D2048/sign=f8539502b119ebc4c0787199b61ecefc/6f061d950a7b0208fa96958660d9f2d3572cc87e.jpg",@"http://c.hiphotos.baidu.com/image/w%3D2048/sign=fdaa6e1799504fc2a25fb705d1e5e611/d058ccbf6c81800acb5c6b11b33533fa828b4770.jpg", @"http://d.hiphotos.baidu.com/image/w%3D2048/sign=a2abd2c080025aafd33279cbcfd5aa64/8601a18b87d6277fed97a6382a381f30e924fc2d.jpg",@"http://a.hiphotos.baidu.com/image/w%3D2048/sign=99df4a68b119ebc4c0787199b61ecefc/6f061d950a7b02089b1a4aec60d9f2d3562cc8e8.jpg",@"http://f.hiphotos.baidu.com/image/w%3D2048/sign=67cecb3b6f224f4a579974133dcf9152/3bf33a87e950352a136998155143fbf2b2118ba7.jpg",@"http://c.hiphotos.baidu.com/image/w%3D2048/sign=319964baa964034f0fcdc5069bfb7831/060828381f30e924c2fb36564e086e061d95f77e.jpg",@"http://b.hiphotos.baidu.com/image/w%3D2048/sign=f8539502b119ebc4c0787199b61ecefc/6f061d950a7b0208fa96958660d9f2d3572cc87e.jpg",@"http://c.hiphotos.baidu.com/image/w%3D2048/sign=fdaa6e1799504fc2a25fb705d1e5e611/d058ccbf6c81800acb5c6b11b33533fa828b4770.jpg",@"http://d.hiphotos.baidu.com/image/w%3D2048/sign=a2abd2c080025aafd33279cbcfd5aa64/8601a18b87d6277fed97a6382a381f30e924fc2d.jpg", @"http://a.hiphotos.baidu.com/image/w%3D2048/sign=99df4a68b119ebc4c0787199b61ecefc/6f061d950a7b02089b1a4aec60d9f2d3562cc8e8.jpg",@"http://f.hiphotos.baidu.com/image/w%3D2048/sign=67cecb3b6f224f4a579974133dcf9152/3bf33a87e950352a136998155143fbf2b2118ba7.jpg", nil];
    
    //UICOllectionViewLAyout专门处理collectionView的布局
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    //iten的大小
    layout.itemSize = CGSizeMake(100, 100);
    //设置边界缩进
    layout.sectionInset = UIEdgeInsetsMake(0, 5, 0, 5);
    //设置item 的间隔最小间隔
    layout.minimumInteritemSpacing = 5;
    //设置行与行之间的间隔
    layout.minimumLineSpacing = 5;
    //设置滑动方向
    //layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    //设置分区页眉大小
    layout.headerReferenceSize = CGSizeMake(320, 100);
    //设置分区页脚的大小
    layout.footerReferenceSize = CGSizeMake(320, 30);
    
    UICollectionView *collection = [[UICollectionView alloc] initWithFrame:[[UIScreen mainScreen] bounds] collectionViewLayout:layout];
    collection.dataSource = self;
    collection.delegate = self;
    collection.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:collection];
    [collection release];
    //注册Item
    [collection registerClass:[WifeCell class] forCellWithReuseIdentifier:@"wang"];
    //注册页眉
    [collection registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"jun"];
    //注册页脚
    [collection registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"xin"];
    self.navigationItem.title = @"女生一览表";
}


#pragma --------协议方法
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.arry.count;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    WifeCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"wang" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor redColor];
    
    cell.phoneImage.imageURL = [NSURL URLWithString:self.arry[indexPath.row]];
    cell.titleLabel.text = [NSString stringWithFormat:@"第%ld女生",(long)indexPath.row+1];
    return cell;
}
//为分区创建页眉 页脚
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {
        UICollectionReusableView *view = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"jun" forIndexPath:indexPath];
        NSArray *arr = @[@"mm0.jpg", @"mm1.jpg", @"mm2.jpg", @"mm3.jpg", @"mm4.jpg", @"mm5.jpg", @"mm6.jpg"];
        ReuseView *reuse = [[ReuseView alloc] initWithFrame:CGRectMake(0, 0, 320, 100) array:arr];
        [view addSubview:reuse];
        view.backgroundColor = [UIColor greenColor];
        return view;
        
    } else {
        UICollectionReusableView *view = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"xin" forIndexPath:indexPath];
        view.backgroundColor = [UIColor blueColor];
        return view;
    }
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%ld %ld",(long)indexPath.section, (long)indexPath.row);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    if ([self isViewLoaded]&&[self.view window]) {
        self.view = nil;
    }

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
