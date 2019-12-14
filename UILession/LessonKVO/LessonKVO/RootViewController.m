//
//  RootViewController.m
//  LessonKVO
//
//  Created by lanouhn on 14/12/12.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "RootViewController.h"
#import "StockModel.h"
@interface RootViewController ()
@property (nonatomic, retain) NSMutableArray *stocArr;//存储股票信息

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.stocArr = [NSMutableArray arrayWithCapacity:1];
    //1:注册观察者指定被观察者属性
    [self addObserver:self forKeyPath:@"stocArr" options:NSKeyValueObservingOptionNew  | NSKeyValueObservingOptionOld context:nil];
    //2:
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    
    UIBarButtonItem *butn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(hand:)];
   // self.navigationItem.rightBarButtonItem = butn;
    
    UIBarButtonItem *replace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(replaceHand:)];
    self.navigationItem.rightBarButtonItems = @[butn,replace];
    
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"wang"];
     self.navigationItem.leftBarButtonItem = self.editButtonItem;
    [butn release];
    [replace release];
}
//添加g股票
- (void)hand:(UIBarButtonItem *)item {
    StockModel *stoc = [[StockModel alloc] init];
    stoc.name = @"中石油";
    stoc.stocPrice = [NSString stringWithFormat:@"%u",arc4random()%60];
     NSInteger idnex = 0;
    if (self.stocArr.count) {
        idnex = self.stocArr.count;
    }
    //执行插入操作
    [self insertObject:stoc inStocArrAtIndex:idnex];
    [stoc release];
}
//修改股票价格
- (void)replaceHand:(UIBarButtonItem *)item{
    if(self.stocArr.count){
        NSInteger idnex = arc4random() % self.stocArr.count;
        StockModel  *mode = [self.stocArr objectAtIndex:arc4random() % self.stocArr.count];
        mode.stocPrice = [NSString stringWithFormat:@"新价格%d",arc4random()%60];
        [self replaceObjectInStocArrAtIndex:idnex withObject:mode];
    }
}
//实现被观察者属性变化时自动实现回调 change 角标 下标 nsindex
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    //获得数组中变化的角标
    NSIndexSet *indeset = [change objectForKey:NSKeyValueChangeIndexesKey];
    //获得改变数据的个数
    NSUInteger count = indeset.count;
    //数组个数
    NSUInteger buffer[count];
    //将改变数据的角标放入buffer数组
    [indeset getIndexes:buffer maxCount:count inIndexRange:nil];
    NSMutableArray *indexpaths = [NSMutableArray array];
    for (int i = 0; i < count; i++) {
        NSUInteger index = buffer[i];
        NSIndexPath *indepath = [NSIndexPath indexPathForRow:index inSection:0];
        [indexpaths  addObject:indepath];
        NSLog(@"%lu",(unsigned long)index);
    }
    //获取引起数组元素变化对应的操作
    NSNumber *kindOperation = [change objectForKey:NSKeyValueChangeKindKey];
    //插入操作
    if([kindOperation integerValue] == NSKeyValueChangeInsertion){
        [self.tableView insertRowsAtIndexPaths:indexpaths withRowAnimation:UITableViewRowAnimationTop];
    }
    //删除操作
    if([kindOperation integerValue] == NSKeyValueChangeRemoval){
        [self.tableView deleteRowsAtIndexPaths:indexpaths withRowAnimation:UITableViewRowAnimationTop];
    }
    //替换操作
    if([kindOperation integerValue]== NSKeyValueChangeReplacement){
        for (int i = 0; i < count; i++) {
            NSIndexPath *idnexpath = [indexpaths objectAtIndex:i];
            UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:idnexpath];
            StockModel *model = [self.stocArr objectAtIndex:idnexpath.row];
            cell.textLabel.text = [NSString stringWithFormat:@"%@---%@",model.stocPrice,model.name];
        }
    }
    
}
//向数组中添加元素
- (void)insertObject:(id)object inStocArrAtIndex:(NSUInteger)index {
    [self.stocArr insertObject:object atIndex:index];
    
}
//移除数组中元素
- (void)removeObjectFromStocArrAtIndex:(NSUInteger)index {
    [self.stocArr removeObjectAtIndex:index];
}


//替换操作
- (void)replaceObjectInStocArrAtIndex:(NSUInteger)index withObject:(id)object {
    [self.stocArr replaceObjectAtIndex:index withObject:object];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return self.stocArr.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
                                                            @"wang"forIndexPath:indexPath];
    StockModel *mdoe = self.stocArr[indexPath.row];
    cell.textLabel.text =[NSString stringWithFormat:@"%@ %@",mdoe.name,mdoe.stocPrice];
    //cell.detailTextLabel.text = mdoe.stocPrice;
    // cell.textLabel.text =
    // Configure the cell...
    
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}


// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        
        [self removeObjectFromStocArrAtIndex:indexPath.row];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
