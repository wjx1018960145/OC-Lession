//
//  RootViewController.m
//  LessonUITableView
//
//  Created by lanouhn on 14/11/7.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, retain) NSDictionary *dic;
@property (nonatomic, retain) NSArray *sortedKeys;
@end

@implementation RootViewController

//初始化分组
//1.字典存储学生信息

- (void)setUpData {
    //小字典,存储学生信息 姓名,性别,图片名称,联系方式
    NSDictionary *xiaoYang = @{@"name":@"曹晓阳", @"gender":@"男", @"imageName":@"曹晓阳", @"phone":@"18695939793"};
    NSDictionary *chaoQun = @{@"name":@"常超群", @"gender":@"男", @"imageName":@"常超群", @"phone":@"15037212589"};
    NSArray *cArr = @[xiaoYang, chaoQun];
    
    NSDictionary *duBo = @{@"name":@"杜博", @"gender":@"男", @"imageName":@"杜博", @"phone":@"15565759703"};
    NSDictionary *dongZhiYong = @{@"name":@"董智勇", @"gender":@"男", @"imageName":@"董智勇", @"phone":@"15838091008"};
    NSDictionary *daoZhiYuan = @{@"name":@"道自元", @"gender":@"男", @"imageName":@"道自元", @"phone":@"18638542416"};
    NSArray *dArr = @[duBo, dongZhiYong, daoZhiYuan];
    
    NSDictionary *gaoQi = @{@"name":@"高祺", @"gender":@"男", @"imageName":@"高祺", @"phone":@"18638019934"};
    NSDictionary *gaoQiang = @{@"name":@"高强", @"gender":@"男", @"imageName":@"高强", @"phone":@"15639093324"};
    NSArray *gArr = @[gaoQi, gaoQiang];
    
    NSDictionary *yaHui = @{@"name":@"何亚慧", @"gender":@"女", @"imageName":@"何亚慧", @"phone":@"18224517653"};
    NSDictionary *keGang = @{@"name":@"黄克刚", @"gender":@"男", @"imageName":@"黄克刚", @"phone":@"15139029075"};
    NSDictionary *huYaHui = @{@"name":@"胡亚辉", @"gender":@"男", @"imageName":@"胡亚辉", @"phone":@"13838508731"};
    NSDictionary *yaChao = @{@"name":@"郝亚超", @"gender":@"女", @"imageName":@"郝亚超", @"phone":@"15136116359"};
    NSArray *hArr = @[yaHui, keGang, huYaHui, yaChao];
    
    NSDictionary *xiaoFei = @{@"name":@"蒋晓飞", @"gender":@"男", @"imageName":@"蒋晓飞", @"phone":@"15518991314"};
    NSDictionary *junFu = @{@"name":@"姜俊甫", @"gender":@"男", @"imageName":@"姜俊甫", @"phone":@"18238110680"};
    NSArray *jArr = @[xiaoFei, junFu];
    
    NSDictionary *luDongXiang = @{@"name":@"路东亮", @"gender":@"男", @"imageName":@"路东亮", @"phone":@"15333771095"};
    NSArray *lArr = @[luDongXiang];
    
    NSDictionary *panLei = @{@"name":@"潘磊", @"gender":@"男", @"imageName":@"潘磊", @"phone":@"13525542091"};
    NSArray *pArr = @[panLei];
    
    NSDictionary *liJun = @{@"name":@"宋立军", @"gender":@"男", @"imageName":@"宋立军", @"phone":@"15637180106"};
    NSArray *sArr = @[liJun];
    
    NSDictionary *mingXing = @{@"name":@"谭明星", @"gender":@"男", @"imageName":@"谭明星", @"phone":@"13903837074"};
    NSArray *tArr = @[mingXing];
    
    NSDictionary *weiHai = @{@"name":@"王伟海", @"gender":@"男", @"imageName":@"王伟海", @"phone":@"15516572865"};
    NSDictionary *chunPing = @{@"name":@"王春平", @"gender":@"女", @"imageName":@"王春平", @"phone":@"18236976694"};
    NSDictionary *yanYan = @{@"name":@"王艳艳", @"gender":@"女", @"imageName":@"王艳艳", @"phone":@"18703613426"};
    NSDictionary *junXin = @{@"name":@"王军鑫", @"gender":@"男", @"imageName":@"王军鑫", @"phone":@"18237145079"};
    NSDictionary *wangLi = @{@"name":@"王力", @"gender":@"男", @"imageName":@"王力", @"phone":@"13782513491"};
    NSArray *wArr = @[weiHai, chunPing, yanYan, junXin, wangLi];
    
    NSDictionary *siJi = @{@"name":@"徐思吉", @"gender":@"男", @"imageName":@"徐思吉", @"phone":@"15565251351"};
    NSArray *xArr = @[siJi];
    
    NSDictionary *yuLu = @{@"name":@"于露", @"gender":@"女", @"imageName":@"于露", @"phone":@"15737151847"};
    NSDictionary *yuanFengGuang = @{@"name":@"袁风光", @"gender":@"男", @"imageName":@"袁风光", @"phone":@"18037178362"};
    NSDictionary *yuLiLi = @{@"name":@"余立立", @"gender":@"男", @"imageName":@"余立立", @"phone":@"15538117362"};
    NSArray *yArr = @[yuLu, yuanFengGuang, yuLiLi];
    
    NSDictionary *zhangBo = @{@"name":@"张博", @"gender":@"男", @"imageName":@"张博", @"phone":@"15136078931"};
    NSDictionary *zhuKaiHua = @{@"name":@"朱凯华", @"gender":@"男", @"imageName":@"朱凯华", @"phone":@"18603842156"};
    NSDictionary *zhouHuaDing = @{@"name":@"周华定", @"gender":@"男", @"imageName":@"周华定", @"phone":@"15538757061"};
    NSDictionary *yuFeng = @{@"name":@"赵玉凤", @"gender":@"女", @"imageName":@"赵玉凤", @"phone":@"18236882973"};
    NSDictionary *zhangZhuang = @{@"name":@"张壮", @"gender":@"男", @"imageName":@"张壮", @"phone":@"15890064564"};
    NSDictionary *qingCheng = @{@"name":@"周清城", @"gender":@"男", @"imageName":@"周清城", @"phone":@"15670250881"};
    NSArray *zArr = @[zhangBo, zhuKaiHua, zhouHuaDing, yuFeng, zhangZhuang, qingCheng];
    
    //创建大字典,存储所有分组信息
    self.dic = @{@"C":cArr, @"D":dArr, @"G":gArr, @"H":hArr, @"J":jArr , @"L":lArr , @"P":pArr, @"S":sArr , @"T":tArr, @"W":wArr, @"X":xArr, @"Y":yArr, @"Z":zArr};
    
//    NSDictionary *caoqun = @{@"name":@"超群",@"gender":@"男",@"phoneNumber":@"12362547",@"imagename":@"ccq.png"};
//    NSDictionary *xiaoyang = @{@"name":@"小羊",@"gender":@"男",@"phoneNumber":@"123456789",@"imagename":@"曹晓阳.png"};
//    NSArray *cArr = @[caoqun,xiaoyang];
    
//    NSArray *dArr = @[@"董老师",@"杜博",@"道致远"];
//    //NSArray *fArr = @[@"范玉珍",@"Frank"];
//    NSArray *gArr = @[@"高强",@"高琪"];
//    NSArray *hArr = @[@"郝亚超",@"何亚辉",@"黄克刚",@"胡亚辉"];
//    NSArray *jArr = @[@"蒋晓飞",@"姜俊莆"];
   // self.dic = @{@"C":cArr};
    //对所有值排序
    NSArray *arryKeys = [_dic allKeys];
    self.sortedKeys = [arryKeys sortedArrayUsingSelector:@selector(compare:)];
    NSLog(@"%@",_sortedKeys);
    
}


- (void)dealloc {
    [_dic release];
    [_sortedKeys release];
    [super dealloc];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpData];
    self.view.backgroundColor = [UIColor yellowColor];
    /*
     UITableview 是ios中用来以列表展示以及编辑信系的控件,继承自UIcrollview,所以能够滑动,只因为只有一列,所以只能在垂直方向滑动.
     UITableview由分区section(班级内的分组)和分区内的行组成.而且索引都是从开始.要取得某一行,必须通过分区索引以及行索引.每一行的位置统一用一个nsindexPath类型的对象存储
     UITableview 有两种形式UITableStylePaln和UITableViewStyleGrouped创建时必须制定一种样式,而且创建后样式不可修改.
     
     
     */
    //创建对象
    UITableView *tableview = [[UITableView alloc] initWithFrame:[[UIScreen mainScreen] bounds] style:UITableViewStylePlain];
    //配置属性
    //datasource 数据源,用来为tablView提供数据
    tableview.dataSource = self;
    //用来处理tableView的响应事件
    tableview.delegate = self;
    //设置分割线的颜色
    tableview.separatorColor = [UIColor redColor];
    //设置分割线的样式
    //tableview.separatorStyle = UITableViewCellSeparatorStyleNone;
    //设置分区索引颜色
    tableview.sectionIndexColor = [UIColor orangeColor];
    //给tableView设置页眉
    UIView *heardView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 200)];
    heardView.backgroundColor = [UIColor yellowColor];
    tableview.tableHeaderView = heardView;
    [heardView release];
    
    //添加到视图
    [self.view addSubview:tableview];
    //释放所有权
    [tableview release];
    // Do any additional setup after loading the view.
}
#pragma -mark------DataSource 实现数据源代理方法
//设定tableView分区个数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return [self.dic count];
}

//设置tableView对应分区中的行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    if (section == 0) {
//        return 10;
//    }else if(section == 1){
//        return 20;
//    }else{
//    return 30;
//    }
    //根据分区索引从排好序的keys中获取对应的key
    NSString *key = self.sortedKeys[section];
    //根据key从字典中获取对应的数组
    NSArray *str = [_dic objectForKey:key];
   
    return [str count];
}

//tableview的每一行都对应一个UITableViewCell对象
//针对每一行返回一个UITanbelViewCell对象
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   //1.创建重用标示符
   static NSString *identifier = @"acre";
    //2.去重用队列(仓库)中根据重用标示符去取柯重用的cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //判断重用队列中是否可以取到可重用的cell
    if (!cell) {
        //cell为空说明没有可重用的cell,就创建一个新的对象
       cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier] autorelease];
        //设置cell辅助视图样式
        cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
        NSLog(@"creat");
    }
    
//    UITableViewCell *cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil] autorelease];
    cell.textLabel.text = [NSString stringWithFormat:@"lanou+%ld%ld",indexPath.section,(long)indexPath.row];
    //cell.imageView.image =
    cell.detailTextLabel.text = @"";
    //获取key
    NSString *key = _sortedKeys[indexPath.section];
    //获取数组元素
    NSArray *arr = [_dic objectForKey:key];
    NSLog(@"%@",arr);
    NSDictionary *strfordic = arr[indexPath.row];//获取数组中字典
    
    NSString *imagename = [strfordic objectForKey:@"imageName"];
    NSString *str = [strfordic objectForKey:@"name"];
    NSString *number = [strfordic objectForKey:@"phone"];
    NSLog(@"%@",imagename);
    
    UIImage *image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle]pathForResource:imagename ofType:@"png"]];
   // image.size = CGSizeMake(50, 50);
    cell.imageView.image = image;//照片
    cell.textLabel.text = str;//姓名
    cell.detailTextLabel.text = number;//号码
    return cell;
}
//设置tableView分区的页眉title
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
//    if (0 == section) {
//        return @"A";
//    }else if (1 == section){
//        return @"B";
//    }else{
//        return @"C";
//    }
    return _sortedKeys[section];
}
//设置tableView分区的页脚title
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    return _sortedKeys[section];
}
//设置tableView右边缘的分区索引
- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    
    return _sortedKeys;

}
#pragma -mark =======UITableViewDelegate 实现协议方法
//当选中cell是触发
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSLog(@"section:%ld row:%ld", (long)indexPath.section, (long)indexPath.row);
    
}
//取消选中时触发,前提是已经选中了一个
- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath NS_AVAILABLE_IOS(3_0) {
    NSLog(@"齐天大圣");
    //indepath 为取消选中的位置
     NSLog(@"didsection:%ld row:%ld", (long)indexPath.section, (long)indexPath.row);
}
//当点击cell上的辅助视图按钮时触发
- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"didsection:%ld row:%ld", (long)indexPath.section, (long)indexPath.row);
    NSLog(@"齐天大圣");
    
}
//设置tableView每一行的高度,该方法在创建cell之前
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
//    if(indexPath.row % 2){
//        return 100;
//    }
    return 50;
}
//设置分区页眉的高度
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 50;
}
//设置分区页脚的高度
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 50;
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
